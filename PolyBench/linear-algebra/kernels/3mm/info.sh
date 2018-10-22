bnc_name="3mm" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "3mm.c" "polybench.c" )

CXXFLAGS=" -I. -DNI=1024 -DNJ=1024 -DNK=1024 -DNL=1024 -DNM=1024 " ;
RUN_OPTIONS=" " ;
