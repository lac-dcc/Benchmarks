#include <stdio.h>
#include <stdlib.h>

void solve(int *v, int n){
  srand(time(NULL));
  int a = 0;
  for (int i=0; i<n; i++){
    a = rand() % 100 + 1;
    v[i] |= a;
    a = rand() % 99 + 1;
    v[i] &= a;
    a = rand() % 123 + 1;
    v[i] += a;
    a = rand() % 102 + 1;
    v[i] *= a;
    a = rand() % 122 + 1;
    v[i] -= a;
    a = rand() % 1231123 + 1;
    v[i] /= a;
    a = rand() % 12 + 1;
    v[i] >>= a;
    a = rand() % 123012 + 1;
    v[i] <<= a;
  }
}

int main(int argc, char *argv[]){
  int *v = malloc(sizeof(int) * atoi(argv[1])); 
  
  int n = atoi(argv[1]);
  
  for (int i=0; i<n; i++)
    v[i] = i;
  
  solve(v, n);
  
  for (int i=0; i<n; i++){
    printf("%d\n", v[i]);
  }
  
  return 0;
}
