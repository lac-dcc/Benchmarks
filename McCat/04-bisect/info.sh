bench_name="04-bisect"

source_files=( "allocvector.c" "bisect_test.c" "dbisect.c" )
COMPILE_FLAGS=" -lm "

PROJ_SRC_DIR=$(pwd)
STDIN="$PROJ_SRC_DIR/bisect_test.in"
