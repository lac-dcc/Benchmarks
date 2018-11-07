#include <stdio.h>
#include <stdlib.h>

<<<<<<< HEAD
void solve(int *a, int *b, int *c, int n) {
  for (int i = 0; i < n-1; i++) {
    int t = a[i+1] * b[i];
    a[i+1] = t * c[i];
  }
}
=======
int c = 0;

int main(int argc, char* argv[]){
  
  int a = argv[0];

  c = atoi(argv[0]);

  int b = atoi(argv[2]);

  // for (int i=0; i<atoi(argv[1]); i++){
  //   a = a + i;
  //   for (int j=0; j<atoi(argv[1]); j++){
  //     a = a + j;
  //   }
  // }

  b = b + a;
>>>>>>> parent of 687c031... Run clang-format on all .c files

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  int *a = (int *)malloc(sizeof(int) * n);
  int *b = (int *)malloc(sizeof(int) * n);
  int *c = (int *)malloc(sizeof(int) * n);

<<<<<<< HEAD
  for (int i = 0; i < n; i++) {
    a[i] = i;
    b[i] = i-1 * 10;
    c[i] = i * 4;
  }

  solve(a, b, c, n);

=======
  c = a + c;
  
  printf("%d\n", a);
  
>>>>>>> parent of 687c031... Run clang-format on all .c files
  return 0;
}
