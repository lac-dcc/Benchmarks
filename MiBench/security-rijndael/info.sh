bench_name="security-rijndael"

source_files=( "aes.c" "aesxam.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=" input_large.asc large.enc e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321 "
