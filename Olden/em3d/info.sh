bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "args.c" "em3d.c" "main.c" "make_graph.c" "util.c" )
CXXFLAGS=" -lm -DTORONTO " ;

PROJ_SRC_DIR=$(pwd) ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1024 1000 125" ;
else
  RUN_OPTIONS="256 250 35"
fi
