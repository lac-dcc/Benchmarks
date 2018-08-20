bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "benchmark.c" "readlist.c" "sort.c" )
CXXFLAGS=" -lm " ;

PROJ_SRC_DIR=$(pwd) ;
RUN_OPTIONS="1000" ;
STDIN="$PROJ_SRC_DIR/benchmark.in3" ;
