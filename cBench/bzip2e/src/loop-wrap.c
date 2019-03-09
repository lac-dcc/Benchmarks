#include <stdio.h>

int main1(int argc, char *argv[], int print);

int main(int argc, char* argv[])
{
  FILE* loop_wrap=NULL;
  long loop_wrap1, loop_wrap2;
  
  if ((loop_wrap=fopen("_finfo_dataset","rt"))==NULL)
  {
    fprintf(stderr,"\nError: Can't find dataset!\n");
    return 1;
  }

  fscanf(loop_wrap, "%ld", &loop_wrap2);
  fclose(loop_wrap);
  			  
  for (loop_wrap1=0; loop_wrap1<loop_wrap2; loop_wrap1++)
  {
      main1(argc, argv, loop_wrap1+1 == loop_wrap2);
  }

  return 0;
}
