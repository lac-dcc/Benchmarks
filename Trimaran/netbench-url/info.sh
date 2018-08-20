bnc_name="netbench-url" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "packet.c" "search.c" "url.c" "utils.c" )
CXXFLAGS=" " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="medium_inputs 1400" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="medium_inputs 100" ;
else
  RUN_OPTIONS="medium_inputs 900" ;
fi
