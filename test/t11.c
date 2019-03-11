#include <stdio.h>
#include <stdlib.h>

float solve(float *a, float *b, float *c, int n) {
  float x = 0;
  for (int i = 0; i < n; i++) {
    a[i] *= b[i]*c[i] + c[i]/b[i];
    /* x += a[i] + b[i] + c[i]; */
  }
  return x;
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

  float x = solve(a, b, c, n);
  printf("%f\n", x);

  return 0;
}
