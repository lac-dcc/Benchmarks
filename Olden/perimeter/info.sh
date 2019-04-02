bench_name="perimeter"

source_files=( "args.c" "main.c" "maketree.c" )
COMPILE_FLAGS=" -lm -DTORONTO "

PROJ_SRC_DIR=$(pwd)

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="9"
else
  RUN_OPTIONS="11"
fi
