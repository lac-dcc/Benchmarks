bench_name="assembler"

source_files=( "assem.c" "buffer.c" "code.c" "convert.c" "op_tab.c" "pass1.c" "pass2.c" "pseudo.c" "record.c" "scan_line.c" "stringI.c" "sym_tab.c" )
COMPILE_FLAGS="-lm"
RUN_OPTIONS=" "
# RUN_OPTIONS="assem.lst"
