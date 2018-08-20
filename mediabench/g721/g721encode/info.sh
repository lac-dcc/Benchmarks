bnc_name="g721" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=("encode.c" "g711.c" "g721.c" "g723_24.c" "g723_40.c" "g72x.c") ;
CXXFLAGS=" -lm " ;
RUN_OPTIONS="" ;
STDIN=" ../data/clinton.pcm " ;
