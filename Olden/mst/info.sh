bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "args.c" "hash.c" "main.c" "makegraph.c" )
CXXFLAGS=" -lm -DTORONTO " ;

PROJ_SRC_DIR=$(pwd) ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="4000" ;
else
  RUN_OPTIONS="1000" ;
fi
