bench_name="security-blowfish"

source_files=( "bf_cbc.c" "bf_cfb64.c" "bf_ecb.c" "bf_enc.c" "bf_ofb64.c" "bf_skey.c" "bftest.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=" d output_large.enc output_large.asc 1234567890abcdeffedcba0987654321 "
