#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
  int n = atoi(argv[1]);
  int* v = (int*)malloc(sizeof(int)*n);
  argc= argc < 40 ? 0 : 1;
  for (int i = 0; i < n; i++) {
    v[i] = i;
  }

  for (int i=0; i < n; i++){
    v[i] += argc;
    v[i] *= 1;
  }

  return 0;
}
