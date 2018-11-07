bench_name="enc-pc1"

source_files=("pc1cod.c")
COMPILE_FLAGS=" "

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="20000000"
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1000000"
else
  RUN_OPTIONS="5000000"
fi
