#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
  int* v = (int*)malloc(sizeof(int)*argc);
  for (int i = 0; i < argc; i++) {
    v[i] = i;
  }
  for (int i = 1; i < argc; i++) {
    v[i] = v[i-1] + i;
  }
  for (int i = 0; i < argc; i++) {
    printf("[%d] = %d", i, v[i]);
  }
}
