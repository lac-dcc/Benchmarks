bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "is.c" )
CXXFLAGS=" " ;
RUN_OPTIONS="" ;

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  CXXFLAGS="-DSMALL_PROBLEM_SIZE" ;
fi
