#include <stdio.h>
#include <stdlib.h>

void solve(int *a, int *b, int *c, int *d, int n){
  for (int i=0; i<n; i++){
    a[i] = (b[i] * c[i]) + a[i]; // c[i] is always 0 
  }
}

int main(int argc, char** argv) {
  int n = atoi(argv[1]);
  int* a = (int*)malloc(sizeof(int)*n);
  int* b = (int*)malloc(sizeof(int)*n);
  int* c = (int*)malloc(sizeof(int)*n);
  int* d = (int*)malloc(sizeof(int)*n);

  for (int i = 0; i < n; i++) {
    a[i] = i;
    b[i] = i % 2 ? i + 10 : i - 3;
    c[i] = 0;
    d[i] = i % 3 ? i : 2 * i;
  }

  solve(a, b, c, d, n);

  return 0;
}
