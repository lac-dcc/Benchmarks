bench_name="llu"

source_files=( "llubenchmark.c" )
COMPILE_FLAGS=""

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-i 6000"
else
  RUN_OPTIONS="-i 6000"
fi
