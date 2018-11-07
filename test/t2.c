#include <stdio.h>
#include <stdlib.h>

void solve(int *a, int *b, int *c, int n) {
  for (int i = 0; i < n-1; i++) {
    int t = a[i+1] * b[i];
    a[i+1] = t * c[i];
  }
}

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  int *a = (int *)malloc(sizeof(int) * n);
  int *b = (int *)malloc(sizeof(int) * n);
  int *c = (int *)malloc(sizeof(int) * n);

  for (int i = 0; i < n; i++) {
    a[i] = i;
    b[i] = i-1 * 10;
    c[i] = i * 4;
  }

  solve(a, b, c, n);

  return 0;
}
