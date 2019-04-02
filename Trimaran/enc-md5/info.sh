bench_name="enc-md5"

source_files=("md5.c")
COMPILE_FLAGS=" "

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1"
else
  RUN_OPTIONS="50"
fi