#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
  int* v = (int*)malloc(sizeof(int)*argc);
  for (int i = 0; i < argc; i++) {
    v[i] = i;
  }
  for (int i = 0; i < argc; i++) {
    int offset = i;
    int a = *v - offset + i;
    v[i] = a+ i;
  }
  for (int i = 0; i < argc; i++) {
    printf("[%d] = %d\n", i, v[i]);
  }
}
