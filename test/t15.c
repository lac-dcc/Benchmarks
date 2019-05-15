#include <stdio.h>
#include <stdlib.h>

int __sampling(float *a, float *b, float *c, float *d, float *e, int n) {
  int cnt = 0;
  for (int i=0; i<n; i++)
    if (d[i] == 0.0)
      cnt++;
  return cnt;
}

void solve(float *a, float *b, float *c, float *d, float *e, int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++)
      a[i] +=  (b[i] + c[i]) * (d[i] * e[i]);
  }
}

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  float *a = (float *)malloc(sizeof(float) * n);
  float *b = (float *)malloc(sizeof(float) * n);
  float *c = (float *)malloc(sizeof(float) * n);
  float *d = (float *)malloc(sizeof(float) * n);
  float *e = (float *)malloc(sizeof(float) * n);

  for (int i = 0; i < n; i++) {
    a[i] = i + 0.0;
    b[i] = 0.0;
    c[i] = 2.0*i;
    d[i] = 2.0*i;
    e[i] = 2.0*i;
  }

  solve(a, b, c, d, e, n);

  return 0;
}