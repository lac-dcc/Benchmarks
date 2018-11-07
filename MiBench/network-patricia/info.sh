bench_name="network-patricia"

source_files=( "patricia.c" "patricia_test.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=" large.udp "
