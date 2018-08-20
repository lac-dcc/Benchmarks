bnc_name="adpcm-rawcaudio" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=("rawcaudio.c" "adpcm.c") ;
CXXFLAGS=" -lm " ;
RUN_OPTIONS="" ;
STDIN=" ../data/clinton.pcm " ;
