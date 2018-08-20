bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "beamformer.c" )
CXXFLAGS=" -lm -DFP_ABSTOLERANCE=1e-5 " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-i 400" ;
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-i 25" ;
else
  RUN_OPTIONS="-i 140" ;
fi
