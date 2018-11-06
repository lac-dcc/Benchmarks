#include <stdio.h>
#include <stdlib.h>

void solve(int *a, int n){
  int i = n-1;
  while (i-- > 0){
    int x = a[i];
    printf("%d\n", x);
  }

  int x = a[i];
  printf("%d\n", x);
}

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  int *a = (int *)malloc(sizeof(int) * n);

  for (int i = 0; i < n; i++) {
    a[i] = i;
  }

  solve(a, n);

  return 0;
}
