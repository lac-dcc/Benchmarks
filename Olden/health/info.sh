bench_name="health"

source_files=( "args.c" "health.c" "list.c" "poisson.c" )
COMPILE_FLAGS=" -lm -DTORONTO "

PROJ_SRC_DIR=$(pwd)

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="10 40 1"
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="8 15 1"
else
  RUN_OPTIONS="9 20 1"
fi
