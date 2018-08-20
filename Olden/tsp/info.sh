bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "args.c" "build.c" "main.c" "tsp.c" )
CXXFLAGS=" -lm -DTORONTO " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="2048000" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="102400" ;
else
  RUN_OPTIONS="1024000" ;
fi
