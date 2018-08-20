bnc_name="uudecode" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "uudecode.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" input-file " ;
