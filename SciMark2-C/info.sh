bnc_name="SciMark2-C" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "FFT.c" "LU.c" "MonteCarlo.c" "Random.c" "SOR.c" "SparseCompRow.c" "Stopwatch.c" "array.c" "kernel.c" "scimark2.c" )
CXXFLAGS=" -lm " ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-large" ;
else
  RUN_OPTIONS=" " ;
fi
