
int main(int argc, char *argv[]){
  int *v = malloc(sizeof(int) * atoi(argv[1])); 
  
  int n = atoi(argv[1]);
  
  for (int i=0; i<n; i++)
    v[i] = i;
  
  int a = atoi(argv[1]);
  for (int i=0; i<n; i++){
    v[i] = v[i] + a;
  }
  
  return 0;
}
