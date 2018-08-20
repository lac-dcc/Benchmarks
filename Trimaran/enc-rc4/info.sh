bnc_name="enc-rc4" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=("rc4.c") ;
CXXFLAGS=" " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1000000" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="2000" ;
else
  RUN_OPTIONS="200000" ;
fi
