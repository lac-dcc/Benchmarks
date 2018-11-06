#include <stdio.h>
#include <stdlib.h>

void solve(int *a, int *b, int *c, int *d, int n) {
  for (int i = 0; i < n; i++) {
    int t = a[i] + b[i];
    a[i] = t + c[i];
  }
}

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  int *a = (int *)malloc(sizeof(int) * n);
  int *b = (int *)malloc(sizeof(int) * n);
  int *c = (int *)malloc(sizeof(int) * n);
  int *d = (int *)malloc(sizeof(int) * n);

  for (int i = 0; i < n; i++) {
    a[i] = i;
  }

  solve(a, b, c, d, n);

  return 0;
}
