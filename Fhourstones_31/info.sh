bench_name="Fhourstones_31"

source_files=( "SearchGame.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=""

if [[ $LARGE_PROBLEM_SIZE ]]; then
  STDIN=" inputs_large "
else
  STDIN=" inputs "
fi
