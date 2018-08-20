bnc_name="llu" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "llubenchmark.c" ) ;
CXXFLAGS="" ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-i 6000" ;
else
  RUN_OPTIONS="-i 6000" ;
fi
