#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
  int* v = (int*)malloc(sizeof(int)*argc);
  for (int i = 0; i < argc; i++) {
    v[i] = 0;
  }
  for (int i = 0; i < argc; i++) {
    int x = *(v + 2*i - i + 2*i*0);
    v[i] = x + i;
    /* v[i] = v[i + offset - i] + i; */
  }
  for (int i = 0; i < argc; i++) {
    printf("[%d] = %d\n", i, v[i]);
  }
}
