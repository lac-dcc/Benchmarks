bnc_name="17-bintr" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "bintree.c" "bnchmrk.c" )
CXXFLAGS=" -lm " ;
STDIN=" bnchmrk.in1 "
