bnc_name="2mm" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "2mm.c" "polybench.c" )

# -DPOLYBENCH_DUMP_ARRAYS will dump the arrays at the end
CXXFLAGS=" -I. -DNI=1024 -DNJ=1024 -DNK=1024 -DNL=1024 " ;
RUN_OPTIONS=" " ;
