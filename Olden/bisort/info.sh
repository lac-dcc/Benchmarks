bench_name="bisort"

source_files=( "args.c" "bitonic.c" )
COMPILE_FLAGS=" -lm -DTORONTO "

PROJ_SRC_DIR=$(pwd)

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="3000000"
else
  RUN_OPTIONS="700000"
fi
