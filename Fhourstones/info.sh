bnc_name="Fhourstones" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "c4.c" "play.c" "time.c" "trans.c" )
CXXFLAGS=" -DUNIX -DTRANSIZE=1050011 -DPROBES=8 -DREPORTPLY=8 " ;
RUN_OPTIONS="" ;
STDIN=" input " ;
