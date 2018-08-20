bnc_name="CrystalMK" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "Crystal_Cholesky.c" "Crystal_div.c" "Crystal_pow.c" "SPEdriver.c" "init.c" "main.c" )
CXXFLAGS=" -lm " ;
