bench_name="miniAMR"
source_files=( "block.c" "check_sum.c" "comm.c" "driver.c" "glibc_compat_rand.c" "init.c" "main.c" "move.c" "plot.c" "profile.c" "refine.c" "stencil.c" "target.c" "util.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=" --nx 8 --ny 8 --nz 8 --num_tsteps 100 "
