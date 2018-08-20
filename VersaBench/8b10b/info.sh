bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "calc.c" "main.c" "testbench.c" )
CXXFLAGS="" ;

PROJ_SRC_DIR=$(pwd) ;
if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="$PROJ_SRC_DIR/input 20000" ;
else
  RUN_OPTIONS="$PROJ_SRC_DIR/input 2000" ;
fi
