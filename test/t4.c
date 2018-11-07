#include <stdio.h>
#include <stdlib.h>

void solve(int *a, int *b, int *c, int *d, int n){
  for (int i=0; i<n; i++){
    int x = a[i];
    int y = b[i] * c[i] + x;
    a[i] = y;
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
    c[i] = i-1;
    d[i] = i % 3 ? i : 2 * i;
  }

  solve(a, b, c, d, n);

  return 0;
}
