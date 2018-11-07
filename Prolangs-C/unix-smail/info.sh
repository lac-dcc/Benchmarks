bench_name="unix-smail"

source_files=( "alias.c" "deliver.c" "getopt.c" "getpath.c" "headers.c" "main.c" "map.c" "misc.c" "pw.c" "resolve.c" "str.c" )
RUN_OPTIONS="-v ALL"
STDIN="main.c"
