bench_name="8b10b"

source_files=( "calc.c" "main.c" "testbench.c" )
COMPILE_FLAGS=""

PROJ_SRC_DIR=$(pwd)
if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="$PROJ_SRC_DIR/input 20000"
else
  RUN_OPTIONS="$PROJ_SRC_DIR/input 2000"
fi
