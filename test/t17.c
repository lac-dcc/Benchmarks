#include <stdio.h>
#include <stdlib.h>
#include <string.h>

float** alloc_matrix(int n){
  float **m = (float**) malloc(sizeof(float*) * n);
  for (int i=0; i<n; i++){
    m[i] = (float*) malloc(sizeof(float) * n);
    memset(m[i], 0.0, sizeof(float) * n);
  }
  
  return m;
}

int matrix_size(char *filename){
  FILE *f = fopen(filename, "r");
  int n = fscanf(f, "%d", &n);
  fclose(f);
  return n;
}

float** read_matrix(char *filename, float **m, int n){
  FILE *f = fopen(filename, "r");
  
  float v = 0.0;
  
  for (int i=0; i<n; i++){
    for (int j=0; j<n; j++){
      fscanf(f, "%f", &v);
      m[i][j] = v;
    }
  }
  
  fclose(f);
  
  return m;
}

void matrix_mul(float **a, float **b, float **c, int n){
  for (int i=0; i<n; i++){
    for (int j=0; j<n; j++){
      for (int k=0; k<n; k++){
        c[i][j] += a[i][k] * b[k][j]; 
      }
    }
  }
}

void print(int **m, int n){
  printf("-----\n");
  for (int i=0; i<n; i++){
    for (int j=0; j<n; j++){
      printf("%d ", m[i][j]);
    }
    printf("\n");
  }
  printf("\n");
}

int main(int argc, char *argv[]){
  
  int n = atoi(argv[1]);
  float **a = alloc_matrix(n);
  float **b = alloc_matrix(n);
  float **c = alloc_matrix(n);
  
  char buf[20];
  snprintf(buf, sizeof buf, "matrices/%s_a.txt", argv[2]);
  read_matrix(buf, a, n);
  
  snprintf(buf, sizeof buf, "matrices/%s_b.txt", argv[2]);
  read_matrix(buf, b, n);
  
  matrix_mul(a, b, c, n);
  
  
  return 0;
}
