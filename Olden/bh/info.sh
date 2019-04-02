bench_name="bh"

source_files=( "args.c" "newbh.c" "util.c" "walksub.c" )
COMPILE_FLAGS=" -lm -DTORONTO "

PROJ_SRC_DIR=$(pwd)

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="2000 5"
else
  RUN_OPTIONS="40000 30"
fi
