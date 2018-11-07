bench_name="netbench-crc"

source_files=( "crc32.c" "packet.c" )
COMPILE_FLAGS=" "

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="40000"
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1000"
else
  RUN_OPTIONS="12000"
fi
