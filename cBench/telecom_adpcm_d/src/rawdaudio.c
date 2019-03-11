/* testd - Test adpcm decoder */

#include "adpcm.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

struct adpcm_state state;

#define NSAMPLES 1000

char	abuf[NSAMPLES/2];
short	sbuf[NSAMPLES];

int main()
{
  FILE* loop_wrap=NULL;
  long loop_wrap1, loop_wrap2;
    int n;

  if ((loop_wrap=fopen("_finfo_dataset","rt"))==NULL)
  {
    fprintf(stderr,"\nError: Can't find dataset!\n");
    exit(1);
  }

  fscanf(loop_wrap, "%ld", &loop_wrap2);
  fclose(loop_wrap);
  			  

    while(1) {
        struct adpcm_state current_state = state;

	n = read(0, abuf, NSAMPLES/2);
	if ( n < 0 ) {
	    perror("input file");
	    exit(1);
	}
	if ( n == 0 ) break;
  
        /* gfursin */
        for (loop_wrap1=0; loop_wrap1<loop_wrap2; loop_wrap1++)
        {
	  /* The call to adpcm_decoder modifies the state. We need to make a
	     copy of the state and to restore it before each iteration of the
	     kernel to make sure we do not alter the output of the
	     application. */
          state = current_state;
  	  adpcm_decoder(abuf, sbuf, n*2, &state);  /* modifies state */
	}

	write(1, sbuf, n*4);
    }
    return 0;
}
