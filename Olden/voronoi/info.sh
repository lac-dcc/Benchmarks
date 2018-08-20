bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "args.c" "newvor.c" "output.c" "vector.c" )
CXXFLAGS=" -lm -DTORONTO " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1000000 20 32 7" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="10000 20 32 7" ;
else
  RUN_OPTIONS="100000 20 32 7" ;
fi
