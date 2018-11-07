bench_name="is"

source_files=( "is.c" )
COMPILE_FLAGS=" "
RUN_OPTIONS=""

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  COMPILE_FLAGS="-DSMALL_PROBLEM_SIZE"
fi
