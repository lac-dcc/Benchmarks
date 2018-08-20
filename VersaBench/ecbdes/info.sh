bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "des_enc.c" "driver.c" "ecb_enc.c" "set_key.c" )
CXXFLAGS="" ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="34" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="4" ;
else
  # medium problem size
  RUN_OPTIONS="16" ;
fi
