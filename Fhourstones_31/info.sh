bnc_name="Fhourstones_31" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "SearchGame.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS="" ;

if [[ $LARGE_PROBLEM_SIZE ]]; then
  STDIN=" inputs_large " ;
else
  STDIN=" inputs " ;
fi
