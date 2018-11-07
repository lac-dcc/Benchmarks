bench_name="SciMark2-C"

source_files=( "FFT.c" "LU.c" "MonteCarlo.c" "Random.c" "SOR.c" "SparseCompRow.c" "Stopwatch.c" "array.c" "kernel.c" "scimark2.c" )
COMPILE_FLAGS=" -lm "

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-large"
else
  RUN_OPTIONS=" "
fi
