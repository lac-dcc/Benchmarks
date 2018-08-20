bnc_name="SimpleMOC" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;
source_files=( "comms.c" "glibc_compat_rand.c" "init.c" "io.c" "main.c" "papi.c" "solver.c" "source.c" "test.c" "tracks.c" "utils.c" )
CXXFLAGS=" -lm -std=gnu99 " ;
RUN_OPTIONS=" -i default.in " ;
