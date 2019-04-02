bench_name="bmm"

source_files=( "bmm.c" )
COMPILE_FLAGS=""

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="128 32"
else
  RUN_OPTIONS="1024 1024"
fi
