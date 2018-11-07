bench_name="beamformer"

source_files=( "beamformer.c" )
COMPILE_FLAGS=" -lm -DFP_ABSTOLERANCE=1e-5 "

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-i 400"
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-i 25"
else
  RUN_OPTIONS="-i 140"
fi
