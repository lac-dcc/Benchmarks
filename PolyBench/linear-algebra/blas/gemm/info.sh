bench_name="gemm"

source_files=($(ls *.c))

COMPILE_FLAGS=" -I. -DPOLYBENCH_DUMP_ARRAYS "
RUN_OPTIONS=" "
