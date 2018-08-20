bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "asearch.c" "asearch1.c" "bitap.c" "checkfile.c" "compat.c" "follow.c" "main.c" "maskgen.c" "mgrep.c" "parse.c" "preprocess.c" "sgrep.c" "utilities.c" )

RUN_OPTIONS="-2 int InstructionCombining.cpp" ;
