bnc_name="automotive-bitcount" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "bitarray.c" "bitcnt_1.c" "bitcnt_2.c" "bitcnt_3.c" "bitcnt_4.c" "bitcnts.c" "bitfiles.c" "bitstrng.c" "bstr_i.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" 1125000 " ;
