bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "alias.c" "deliver.c" "getopt.c" "getpath.c" "headers.c" "main.c" "map.c" "misc.c" "pw.c" "resolve.c" "str.c" )
RUN_OPTIONS="-v ALL" ;
STDIN="main.c" ;
