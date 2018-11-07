bench_name="bmm"

source_files=( "bmm.c" )
COMPILE_FLAGS=""

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1024 1024"
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="128 32"
else
  # medium problem size
  RUN_OPTIONS="1024 64"
fi
