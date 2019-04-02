bench_name="ft"

source_files=( "Fheap.c" "Fsanity.c" "ft.c" "graph.c" "item.c" )
COMPILE_FLAGS=" "

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS=" 1500 100000 "
else
  RUN_OPTIONS=" 6000 900000 "
fi
