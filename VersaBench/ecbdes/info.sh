bench_name="ecbdes"

source_files=( "des_enc.c" "driver.c" "ecb_enc.c" "set_key.c" )
COMPILE_FLAGS=""

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="34"
elif [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="4"
else
  # medium problem size
  RUN_OPTIONS="16"
fi
