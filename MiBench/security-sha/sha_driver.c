/* NIST Secure Hash Algorithm */

#include "sha.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char **argv) {
  FILE *fin;
  SHA_INFO sha_info;

  if (argc < 2) {
    fin = stdin;
    sha_stream(&sha_info, fin);
    sha_print(&sha_info);
  } else {
    while (--argc) {
      fin = fopen(*(++argv), "rb");
      if (fin == NULL) {
        printf("error opening %s for reading\n", *argv);
      } else {
        sha_stream(&sha_info, fin);
        sha_print(&sha_info);
        fclose(fin);
      }
    }
  }
  return (0);
}
