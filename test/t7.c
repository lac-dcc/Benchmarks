int main(int argc, char *argv[]){
  int *a = malloc(sizeof(int) * atoi(argv[1]));
  
  int n = atoi(argv[1]);
  for (int i=0; i<n; i++)
    a[i] = 0;
  
  for (int i=0; i<n; i++)
    a[i] = a[i] + 1;
  
  /* for (int i=0; i<n; i++) */
  /*   printf("%d ", a[i]); */
  
  return 0;
}
