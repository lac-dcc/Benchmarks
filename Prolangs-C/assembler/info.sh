bnc_name="assembler" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "assem.c" "buffer.c" "code.c" "convert.c" "op_tab.c" "pass1.c" "pass2.c" "pseudo.c" "record.c" "scan_line.c" "stringI.c" "sym_tab.c" )
CXXFLAGS="-lm" ;
RUN_OPTIONS=" "
# RUN_OPTIONS="assem.lst"
