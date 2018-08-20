bnc_name="IRSmk" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "main.c" "rmatmult3.c" "utility.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" irsmk_input " ;
