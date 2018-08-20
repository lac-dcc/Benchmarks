bnc_name="tramp3d-v4" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "tramp3d-v4.cpp" ) ;
COMPILER=clang++
CXXFLAGS=" -lm -fno-exceptions -lstdc++ " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS=" --cartvis 1.0 0.0 --rhomin 1e-8 -n 10 --domain 32 32 32" ;
else
  RUN_OPTIONS=" --cartvis 1.0 0.0 --rhomin 1e-8 -n 4 --domain 32 32 32" ;
fi
