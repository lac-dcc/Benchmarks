
int v[20000];

int solve(int k, int z){
  for (int i=0; i<k; i++){
    for (int j=0; j<z; j++){
      v[i] = i*j + i + j;
    }
  }
}

int main(){
  
  solve(30000, 30000);
  
  return 0;
}

