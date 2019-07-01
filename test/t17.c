#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

float* alloc_matrix(int n){
  float *m = (float*) malloc(sizeof(float) * n * n);
  return m;
}

int matrix_size(char *filename){
  FILE *f = fopen(filename, "r");
  int n = fscanf(f, "%d", &n);
  fclose(f);
  return n;
}

float* read_matrix(char *filename, float *m, int n){
  FILE *f = fopen(filename, "r");
  
  float v = 0.0;
  
  for (int i=0; i<n; i++){
    for (int j=0; j<n; j++){
      fscanf(f, "%f", &v);
      m[i*n + j] = v;
    }
  }
  
  fclose(f);
  
  return m;
}

void matrix_mul(float *restrict a, float *restrict b, float *restrict c, int n){
  for (int i=0; i<n; i++){
    for (int j=0; j<n; j++){
      for (int k=0; k<n; k++){
        c[i*n + j] += a[i*n + k] * b[k*n + j]; 
      }
    }
  }
}

int main(int argc, char *argv[]){

  int n = atoi(argv[1]);
  float *a = alloc_matrix(n);
  float *b = alloc_matrix(n);
  float *c = alloc_matrix(n);
  
  char buf[20];
  snprintf(buf, sizeof buf, "matrices/%s_a.txt", argv[2]);
  read_matrix(buf, a, n);
  
  snprintf(buf, sizeof buf, "matrices/%s_b.txt", argv[2]);
  read_matrix(buf, b, n);

  // clock_t start = clock();
   //... do work here
  matrix_mul(a, b, c, n);
  // clock_t end = clock();
  // double time_elapsed_in_seconds = (end - start)/(double)CLOCKS_PER_SEC; 
  // printf("elapsed time: %lf\n", time_elapsed_in_seconds);
  
  
  return 0;
}
