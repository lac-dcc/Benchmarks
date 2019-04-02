bench_name="enc-3des"

source_files=( "des.c" )
COMPILE_FLAGS=" "

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="10"
else
  RUN_OPTIONS="200"
fi