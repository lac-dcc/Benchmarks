bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "ch.c" "intersec.c" "pointlis.c" "splay.c" "splay2.c" "vor.c" )
CXXFLAGS=" -lm " ;
STDIN="vor.in3"
