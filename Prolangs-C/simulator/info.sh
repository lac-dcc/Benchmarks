bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "convert.c" "debugger.c" "format.c" "instruct.c" "instruct2.c" "interupt.c" "loadexe.c" "machine.c" "memory.c" "print.c" "sim_debug.c" "stringI.c" "sym_tab.c" )
CXXFLAGS="-lm" ;
