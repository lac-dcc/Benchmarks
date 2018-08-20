bnc_name="netbench-crc" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "crc32.c" "packet.c" )
CXXFLAGS=" " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="40000" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="1000" ;
else
  RUN_OPTIONS="12000" ;
fi
