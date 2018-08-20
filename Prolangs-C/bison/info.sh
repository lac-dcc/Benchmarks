bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "LR0.c" "allocate.c" "closure.c" "conflicts.c" "derives.c" "files.c" "getargs.c" "getopt.c" "gram.c" "lalr.c" "lex.c" "main.c" "nullable.c" "output.c" "print.c" "reader.c" "symtab.c" "warshall.c" )
RUN_OPTIONS="parse.y.in -v"
