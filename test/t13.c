#include <stdio.h>
#include <stdlib.h>

void solve(double *a, double *b, int n){
  for (int i=0; i<n; i++){
    // if (b[i] != 0.0){
      a[i] += b[i];
    // }
  }
}

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  double *a = (double *)malloc(sizeof(double) * n);
  double *b = (double *)malloc(sizeof(double) * n);

  for (int i = 0; i < n; i++) {
    a[i] = i + 1.0;
    if (i % 2)
      b[i] = i * 1.12;
    else
      b[i] = 0.0;
  }

  solve(a, b, n);

  return 0;
}
