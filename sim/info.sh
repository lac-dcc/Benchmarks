bnc_name="sim" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "sim.c" )
CXXFLAGS=" -DUNIX " ;
RUN_OPTIONS=" 8 tob.38-44 liv.42-48 " ;
