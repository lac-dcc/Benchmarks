bench_name="tsp"

source_files=( "args.c" "build.c" "main.c" "tsp.c" )
COMPILE_FLAGS=" -lm -DTORONTO "

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="102400"
else
  RUN_OPTIONS="2048000"
fi
