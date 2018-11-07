bench_name="SimpleMOC"
source_files=( "comms.c" "glibc_compat_rand.c" "init.c" "io.c" "main.c" "papi.c" "solver.c" "source.c" "test.c" "tracks.c" "utils.c" )
COMPILE_FLAGS=" -lm -std=gnu99 "
RUN_OPTIONS=" -i default.in "
