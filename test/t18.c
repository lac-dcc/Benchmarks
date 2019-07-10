#include <time.h>
#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>

#define SAMPLING_FACTOR 1000

double sampling(float *restrict m, int n){
  int sum = 0;
  double zeros = 0.0;
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      if (!m[i*n + j]) {
        zeros++;
      }
      sum++;
      if (sum > SAMPLING_FACTOR) {
        return zeros / (double)SAMPLING_FACTOR;
      }
    }
  }
  return 0;
}

void init_matrix(float *restrict m, int n, double factor) {
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++) {
      float value = (float) rand()/RAND_MAX;
      m[i*n + j] = value > factor ? 1.0 : 0.0;
    }
}

void matrix_mul(float *restrict a, float *restrict b, float *restrict c, int n){
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++) {
      c[i*n + j] = 0;
      for (int k=0; k<n; k++)
        c[i*n + j] += a[i*n + k] * b[k*n + j];
    }
}

void matrix_sil(float *restrict a, float *restrict b, float *restrict c, int n){
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++) {
      c[i*n + j] = 0;
      for (int k=0; k<n; k++) {
        float aux = a[i*n + k] * b[k*n + j];
        if (aux) {
          c[i*n + j] += aux;
        }
      }
    }
}

void matrix_lde(float *restrict a, float *restrict b, float *restrict c, int n){
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++) {
      c[i*n + j] = 0;
      for (int k=0; k<n; k++) {
        float t0 = a[i*n + k];
        if (t0 != 0.0) {
          float t1 = b[k*n + j];
          // if (t1 != 0.0){
            c[i*n + j] += t0 * t1;
          // }
        }
      }
    }
}

void matrix_spl(float *restrict a, float *restrict b, float *restrict c, int n){
  if (sampling(a, n) > 0.50) {
    printf("Entering matrix load\n");
    matrix_lde(a, b, c, n);
  } else {
    matrix_mul(a, b, c, n);
  }
}

int sum_zeros(float *restrict a, int n){
  int zeros = 0;
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++)
      if (!a[i*n+j]) {
        zeros++;
      }
  return zeros;
}

float sum_matrix(float *restrict a, int n) {
  float sum = 0.0;
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++)
      sum += a[i*n + j];
  return sum;
}

double run_code(
    void (*mul)(float *restrict, float *restrict, float *restrict, int),
    float *restrict a, float *restrict b, float *restrict c, int N
) {
  struct timespec start, end;
  clock_gettime(CLOCK_MONOTONIC_RAW, &start);
  (*mul)(a, b, c, N);
  clock_gettime(CLOCK_MONOTONIC_RAW, &end);
  uint64_t delta_us = (end.tv_sec - start.tv_sec) * 1000000 +
    (end.tv_nsec - start.tv_nsec) / 1000;
  return delta_us / 1000000.0;
}

int main(int argc, char** argv) {
  if (argc < 2) {
    fprintf(stderr, "Sintax: %s size\n", argv[0]);
  } else {
    // srand(time(NULL));
    const int N = atoi(argv[1]);
    float *a = (float*)malloc(sizeof(float) * N * N);
    float *b = (float*)malloc(sizeof(float) * N * N);
    float *c = (float*)malloc(sizeof(float) * N * N);
    printf("F, mul, sil, lde, spl\n");
    for (double F = 0; F <= 1.0; F += 0.05) {
      init_matrix(a, N, F);
      init_matrix(b, N, F);
      double mul_time = run_code(&matrix_mul, a, b, c, N);
      double sil_time = run_code(&matrix_sil, a, b, c, N);
      double lde_time = run_code(&matrix_lde, a, b, c, N);
      double spl_time = run_code(&matrix_spl, a, b, c, N);
      printf("%.2f, %.2lf, %.2lf, %.2lf, %.2lf\n",
          F, mul_time, sil_time, lde_time, spl_time);
    }
    return 0;
  }
}
