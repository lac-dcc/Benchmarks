bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "allocvector.c" "bisect_test.c" "dbisect.c" )
CXXFLAGS=" -lm " ;

PROJ_SRC_DIR=$(pwd) ;
STDIN="$PROJ_SRC_DIR/bisect_test.in"
