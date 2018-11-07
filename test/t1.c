
#define N 5

double v[N];

int solve(int k){
  for (int i=0; i<k; i++){
    v[i] += (i + 1.23);
  }
}

int main(){
  
  solve(N);
  
  return 0;
}

