bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "convert.c" "load.c" "memory.c" "pass1.c" "pass2.c" "print.c" "stringI.c" "sym_tab.c" )
CXXFLAGS="-lm" ;
