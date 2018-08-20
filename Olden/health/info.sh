bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "args.c" "health.c" "list.c" "poisson.c" )
CXXFLAGS=" -lm -DTORONTO " ;

PROJ_SRC_DIR=$(pwd) ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="10 40 1" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="8 15 1" ;
else
  RUN_OPTIONS="9 20 1" ;
fi
