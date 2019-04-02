bench_name="ecbdes"

source_files=( "des_enc.c" "driver.c" "ecb_enc.c" "set_key.c" )
COMPILE_FLAGS=""

if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="4"
else
  RUN_OPTIONS="34"
fi
