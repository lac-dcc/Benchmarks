
int main(int argc, char *argv[]){
  int *v = malloc(sizeof(int) * atoi(argv[1])); 
  
  int n = atoi(argv[1]);
  
  for (int i=0; i<n; i++)
    v[i] = i;
  
  int a = atoi(argv[1]);

  for (int i=0; i<n; i++){
    int a = v[i];
    if (i % 2 == 0){
      v[i] = a + argc;
    }
  }

  printf("%d\n", a);
  
  return 0;
}
