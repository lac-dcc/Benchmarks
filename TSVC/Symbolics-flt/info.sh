bnc_name=$(basename $(pwd)) ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "dummy.c" "tsc.c" )
CXXFLAGS=" -std=gnu99 -lm " ;
RUN_OPTIONS=" 9090 5 " ;
