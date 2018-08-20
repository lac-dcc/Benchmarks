bnc_name=`basename $(pwd)` ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "matmul_f64_4x4.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" " ;
