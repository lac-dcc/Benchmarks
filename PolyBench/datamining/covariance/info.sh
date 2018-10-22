bnc_name="covariance" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "covariance.c" "polybench.c" )

CXXFLAGS=" -I. " ;
RUN_OPTIONS=" " ;
