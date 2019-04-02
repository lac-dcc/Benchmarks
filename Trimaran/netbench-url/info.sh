bench_name="netbench-url"

source_files=( "packet.c" "search.c" "url.c" "utils.c" )
COMPILE_FLAGS=" "

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="medium_inputs 100"
else
  RUN_OPTIONS="medium_inputs 1400"
fi
