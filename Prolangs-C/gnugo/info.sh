bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "count.c" "countlib.c" "endgame.c" "eval.c" "exambord.c" "findcolr.c" "findnext.c" "findopen.c" "findpatn.c" "findsavr.c" "findwinr.c" "fioe.c" "genmove.c" "getij.c" "getmove.c" "initmark.c" "main.c" "matchpat.c" "opening.c" "openregn.c" "random.c" "seed.c" "sethand.c" "showbord.c" "showinst.c" "suicide.c" )
STDIN="stdin" ;
