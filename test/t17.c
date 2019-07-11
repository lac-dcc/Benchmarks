#include <time.h>
#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

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

void matrix_check(float *restrict a, float *restrict b, float *restrict c, int n){
  for (int i=0; i<n; i++){
    for (int j=0; j<n; j++){
      float tc = 0.0;
      for (int k=0; k<n; k++){
        float ta = a[i*n + k];
        float tb = b[k*n + j];

        tc += + (ta * tb);
        // c[i*n + j] += a[i*n + k] * b[k*n + j];
      }
      assert(tc == c[i*n + j]);
    }
  }
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
    for (int j=0; j<n; j++)
      for (int k=0; k<n; k++)
        c[i*n + j] += a[i*n + k] * b[k*n + j];
}

void matrix_store(float *restrict a, float *restrict b, float *restrict c, int n){
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++)
      for (int k=0; k<n; k++) {
        float aux = a[i*n + k] * b[k*n + j];
        if (aux) {
          c[i*n + j] += aux;
        }
      }
}

void matrix_load(float *restrict a, float *restrict b, float *restrict c, int n){
  for (int i=0; i<n; i++)
    for (int j=0; j<n; j++)
      for (int k=0; k<n; k++) {
        float t0 = a[i*n + k];
        if (t0 != 0.0){
          float t1 = b[k*n + j];
          if (t1 != 0.0){
            c[i*n + j] += t0 * t1;
          }
        }
      }
}

void matrix_sample(float *restrict a, float *restrict b, float *restrict c, int n){
  if (sampling(a, n) > 0.94) {
    printf("Entering matrix load\n");
    matrix_load(a, b, c, n);
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

int main(int argc, char** argv) {
  if (argc < 4) {
    fprintf(stderr, "Sintax: %s size factor choice\n", argv[0]);
  } else {
    // srand(time(NULL));
    const int N = atoi(argv[1]);
    const double F = atof(argv[2]);
    const int choice = atoi(argv[3]);
    float *a = (float*)malloc(sizeof(float) * N * N);
    float *b = (float*)malloc(sizeof(float) * N * N);
    float *c = (float*)malloc(sizeof(float) * N * N);
    init_matrix(a, N, F);
    init_matrix(b, N, F);
    int zeros_A = sum_zeros(a, N);
    int zeros_B = sum_zeros(b, N);
    printf("Zeros a = %lf\n", zeros_A/(double)N);
    printf("Zeros b = %lf\n", zeros_B/(double)N);
    // struct timespec start, end;
    // clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    switch(choice) {
      case 0: {
                matrix_mul(a, b, c, N);
                break;
              }
      case 1: {
                matrix_store(a, b, c, N);
                break;
              }
      case 2: {
                matrix_load(a, b, c, N);
                break;
              }
      case 3: {
                matrix_sample(a, b, c, N);
                break;
              }
    }

    /* matrix_check(a, b, c, N); */
    // clock_gettime(CLOCK_MONOTONIC_RAW, &end);
    // uint64_t delta_us = (end.tv_sec - start.tv_sec) * 1000000 + (end.tv_nsec - start.tv_nsec) / 1000;
    // printf("time %llu, sum = %f\n", delta_us, sum_matrix(c, N));
    return 0;
  }
}
