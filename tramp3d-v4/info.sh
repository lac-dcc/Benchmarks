bench_name="tramp3d-v4"

source_files=( "tramp3d-v4.cpp" )
COMPILER=clang++
COMPILE_FLAGS=" -lm -fno-exceptions -lstdc++ "

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS=" --cartvis 1.0 0.0 --rhomin 1e-8 -n 10 --domain 32 32 32"
else
  RUN_OPTIONS=" --cartvis 1.0 0.0 --rhomin 1e-8 -n 4 --domain 32 32 32"
fi
