bench_name="mst"

source_files=( "args.c" "hash.c" "main.c" "makegraph.c" )
COMPILE_FLAGS=" -lm -DTORONTO "

PROJ_SRC_DIR=$(pwd)

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="4000"
else
  RUN_OPTIONS="1000"
fi
