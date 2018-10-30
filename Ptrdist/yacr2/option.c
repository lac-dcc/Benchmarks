
/*
 *
 * option.c
 *
 */

#include <string.h>

#define OPTION_CODE

/*
 *
 * Includes.
 *
 */

#include "channel.h"
#include <stdio.h>
#include <stdlib.h>

/*
 *
 * Code.
 *
 */

void Option(int argc, char *argv[]) {
  /*
   * Check arguments.
   */
  if (argc != 2) {
    printf("\nUsage: yacr2 <filename>\n\n");
    exit(1);
  }

  /*
   * Specified options.
   */
  channelFile = argv[1];
}
