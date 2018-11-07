bench_name="03-testtrie"

source_files=( "charsequence.c" "main.c" "trie.c" )
COMPILE_FLAGS=" -lm "

PROJ_SRC_DIR=$(pwd)
RUN_OPTIONS="$PROJ_SRC_DIR/testtrie.in2"
