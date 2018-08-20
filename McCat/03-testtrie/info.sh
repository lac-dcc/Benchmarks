bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "charsequence.c" "main.c" "trie.c" )
CXXFLAGS=" -lm " ;

PROJ_SRC_DIR=$(pwd) ;
RUN_OPTIONS="$PROJ_SRC_DIR/testtrie.in2" ;
