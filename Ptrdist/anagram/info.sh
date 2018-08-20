bnc_name="anagram" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=("anagram.c") ;
CXXFLAGS=" -lm -D_POSIX_SOURCE -DHYPRE_TIMING -DHYPRE_SEQUENTIAL " ;
RUN_OPTIONS=" words 2 " ;
STDIN="input.OUT"
