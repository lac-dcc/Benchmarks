void test(int *restrict a, int *restrict b, int *restrict c, int *restrict d, int *restrict e, int N) {
  int i;
  for (i = 0; i < N; i = i + 5) {
     a[i] = b[i] + c[i];
  }

  for (i = 0; i < N - 5; i = i + 5) {
     e[i] = a[i] * d[i];
  }
}
