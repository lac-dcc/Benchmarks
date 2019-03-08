/* +++Date last modified: 05-Jul-1997 */

/*
**        A Pratt-Boyer-Moore string search, written by Jerry Coffin
**  sometime or other in 1991.  Removed from original program, and
**  (incorrectly) rewritten for separate, generic use in early 1992.
**  Corrected with help from Thad Smith, late March and early
**  April 1992...hopefully it's correct this time. Revised by Bob Stout.
**
**  This is hereby placed in the Public Domain by its author.
**
**  10/21/93 rdg  Fixed bug found by Jeff Dunlop
*/

#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

static size_t table[UCHAR_MAX + 1];
static size_t len;
static char *findme;

static char str_misc[1024];

/*
**  Call this with the string to locate to initialize the table
*/

void init_search(const char *string)
{
      size_t i;

      len = strlen(string);
      for (i = 0; i <= UCHAR_MAX; i++)                      /* rdg 10/93 */
            table[i] = len;
      for (i = 0; i < len; i++)
            table[(unsigned char)string[i]] = len - i - 1;
      findme = (char *)string;
}

/*
**  Call this with a buffer to search
*/

char *strsearch(const char *string)
{
      register size_t shift;
      register size_t pos = len - 1;
      char *here;
      size_t limit=strlen(string);

      while (pos < limit)
      {
            while( pos < limit &&
                  (shift = table[(unsigned char)string[pos]]) > 0)
            {
                  pos += shift;
            }
            if (0 == shift)
            {
                  if (0 == strncmp(findme,
                        here = (char *)&string[pos-len+1], len))
                  {
                        return(here);
                  }
                  else  pos++;
            }
      }
      return NULL;
}

#include <stdio.h>

int main(int argc, char* argv[])
{
      char *here = NULL;
      int i;

      FILE* loop_wrap=NULL;
      FILE* fmisc1=NULL;
      FILE* fmisc2=NULL;
      FILE* fmisc3=NULL;
      long loop_wrap1, loop_wrap2;

      long size1=0;
      long size2=0;
      char* search_strings[128000];
      char* find_strings[128000];
      long i1=0;
      long i2=0;
      char* a1x;
      char* a2x;
  
      if ((loop_wrap=fopen("_finfo_dataset","rt"))==NULL)
      {
        fprintf(stderr,"\nError: Can't find dataset!\n");
        exit(1);
      }

      fscanf(loop_wrap, "%ld", &loop_wrap2);
      fclose(loop_wrap);
  
      if (argc<3)
      {
        fprintf(stderr, "Error: too few parameters!\n");
	exit(1);
      }

      if ((fmisc1=fopen(argv[1],"rt"))==NULL)
      {
        fprintf(stderr,"\nError: Can't find text!\n");
        exit(1);
      }

      if ((fmisc2=fopen(argv[2],"rt"))==NULL)
      {
        fprintf(stderr,"\nError: Can't find search strings!\n");
        exit(1);
      }

      //counting file1
      i1=0;
      while ((fgets(str_misc, 1024, fmisc1)!=NULL) && (feof(fmisc1)==0))
      {
        i1++;
	size1+=strlen(str_misc)+1;
      }

      //counting file2
      i2=0;
      while ((fgets(str_misc, 1024, fmisc2)!=NULL) && (feof(fmisc2)==0))
      {
        i2++;
	size2+=strlen(str_misc)+1;
      }

      fclose(fmisc1);
      fclose(fmisc2);
      
      printf("Size1=%lu, size2=%lu\n", size1, size2);

      a1x=(char*) malloc(sizeof(char)*size1);
      a2x=(char*) malloc(sizeof(char)*size2);

      if ((fmisc1=fopen(argv[1],"rt"))==NULL)
      {
        fprintf(stderr,"\nError: Can't find text!\n");
        exit(1);
      }

      if ((fmisc2=fopen(argv[2],"rt"))==NULL)
      {
        fprintf(stderr,"\nError: Can't find search strings!\n");
        exit(1);
      }

      //loading file1
      i1=0;
      size1=0;
      while ((fgets(str_misc, 1024, fmisc1)!=NULL) && (feof(fmisc1)==0))
      {
        if (strlen(str_misc)>0) str_misc[strlen(str_misc)-1]=0;
        strcpy(&a1x[size1], str_misc);
        search_strings[i1]=&a1x[size1];
        i1++;
	size1+=strlen(str_misc)+1;
      }
      search_strings[i1]=0;

      //loading file2
      i2=0;
      size2=0;
      while ((fgets(str_misc, 1024, fmisc2)!=NULL) && (feof(fmisc2)==0))
      {
        if (strlen(str_misc)>0) str_misc[strlen(str_misc)-1]=0;
        strcpy(&a2x[size2], str_misc);
        find_strings[i2]=&a2x[size2];
        i2++;
	size2+=strlen(str_misc)+1;
      }
      find_strings[i2]=0;

      fclose(fmisc1);
      fclose(fmisc2);

      if ((fmisc3=fopen(argv[3],"w"))==NULL)
      {
        fprintf(stderr,"\nError: Can't open file for writing!\n");
        exit(1);
      }

      for (i = 0; find_strings[i]; i++)
      {
            init_search(find_strings[i]);
            for (loop_wrap1=0; loop_wrap1<loop_wrap2; loop_wrap1++)
              here = strsearch(search_strings[i]);
	      
            fprintf(fmisc3, "\"%s\" is%s in \"%s\"", find_strings[i],
                  here ? "" : " not", search_strings[i]); 
            if (here)
                  fprintf(fmisc3, " [\"%s\"]", here); 
            fprintf(fmisc3, "\n");
      }

      fclose(fmisc3);

      return 0;
}

