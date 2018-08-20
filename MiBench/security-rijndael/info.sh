bnc_name="security-rijndael" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "aes.c" "aesxam.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" input_large.asc large.enc e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321 " ;
