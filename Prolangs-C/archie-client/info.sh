bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "aquery.c" "archie.c" "atalloc.c" "dirsend.c" "get_pauth.c" "get_vdir.c" "perrmesg.c" "procquery.c" "ptalloc.c" "regex.c" "stcopy.c" "support.c" "vl_comp.c" "vlalloc.c" )
CXXFLAGS="-I."
