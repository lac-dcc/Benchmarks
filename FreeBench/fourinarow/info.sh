bench_name="fourinarow"

source_files=( "fourinarow.c" )
COMPILE_FLAGS='-DVERSION="1.00" -DCOMPDATE="\"today\"" -DCFLAGS=\"\" -DHOSTNAME="\"thishost\"" '

PROJ_SRC_DIR=$(pwd)
if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="$PROJ_SRC_DIR/ref.in"
else
  RUN_OPTIONS="$PROJ_SRC_DIR/test.in"
fi
