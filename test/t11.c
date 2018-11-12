#include <stdio.h>
#include <stdlib.h>

void solve(float *a, float *b, float *c, int n) {
  for (int i = 0; i < n; i++) {
    int t = a[i] + b[i];
    a[i] = t + c[i];
  }
}

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  float *a = (float *)malloc(sizeof(float) * n);
  float *b = (float *)malloc(sizeof(float) * n);
  float *c = (float *)malloc(sizeof(float) * n);

  for (int i = 0; i < n; i++) {
    a[i] = i + 0.0;
    b[i] = 0.0;
    c[i] = 2.0*i;
  }

  solve(a, b, c, n);

  return 0;
}
