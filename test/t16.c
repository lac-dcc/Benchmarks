int main() {
  int *p;
  int i;
  p = &i;
  *p = 1;
  *p = 1;
  *p = 2;
  return 0;
}
