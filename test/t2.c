// After mem2reg, no store should be produced by this benchmark

#include <stdio.h>

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

  a = a + b;

  c = a + c;
  
  printf("%d\n", a);
  
  return 0;
}
