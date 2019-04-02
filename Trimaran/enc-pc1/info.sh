bench_name="enc-pc1"

source_files=("pc1cod.c")
COMPILE_FLAGS=" "

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1000000"
else
  RUN_OPTIONS="20000000"
fi
