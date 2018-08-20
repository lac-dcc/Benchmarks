bnc_name="miniAMR" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;
source_files=( "block.c" "check_sum.c" "comm.c" "driver.c" "glibc_compat_rand.c" "init.c" "main.c" "move.c" "plot.c" "profile.c" "refine.c" "stencil.c" "target.c" "util.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" --nx 8 --ny 8 --nz 8 --num_tsteps 100 " ;
