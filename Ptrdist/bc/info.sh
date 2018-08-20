bnc_name="bc" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "bc.c" "execute.c" "global.c" "load.c" "main.c" "number.c" "scan.c" "storage.c" "util.c" )
CXXFLAGS=" " ;
RUN_OPTIONS=" " ;
STDIN="primes.b"
