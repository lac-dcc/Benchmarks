#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
  int n = atoi(argv[1]);
  int* v = (int*)malloc(sizeof(int)*n);

  for (int i = 0; i < n; i++) {
    v[i] = i;
  }

  for (int i = 0; i < n; i++) {
    int a = *(v + i);
    v[i] = a + i;
  }
  
  for (int i = 0; i < n; i++) {
    printf("[%d] = %d\n", i, v[i]);
  }
}
