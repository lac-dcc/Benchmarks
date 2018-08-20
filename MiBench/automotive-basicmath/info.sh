bnc_name="automotive-basicmath" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "basicmath.c" "cubic.c" "isqrt.c" "rad2deg.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS="" ;
