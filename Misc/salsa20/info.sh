bnc_name="salsa20" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "salsa20.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" " ;
