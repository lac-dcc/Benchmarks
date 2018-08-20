bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "bmm.c" )
CXXFLAGS="" ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1024 1024" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="128 32" ;
else
  # medium problem size
  RUN_OPTIONS="1024 64" ;
fi
