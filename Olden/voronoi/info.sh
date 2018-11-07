bench_name="voronoi"

source_files=( "args.c" "newvor.c" "output.c" "vector.c" )
COMPILE_FLAGS=" -lm -DTORONTO "

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1000000 20 32 7"
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="10000 20 32 7"
else
  RUN_OPTIONS="100000 20 32 7"
fi
