bench_name="Fhourstones_31"

source_files=( "SearchGame.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=""

if [[ $SMALL_PROBLEM_SIZE ]]; then
  STDIN=" inputs "
else
  STDIN=" inputs_large "
fi
