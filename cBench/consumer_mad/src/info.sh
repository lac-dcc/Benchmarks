bench_name="consumer_mad"

source_files=($(ls *.c))
COMPILE_FLAGS=" -lz -lesd -DFPM_DEFAULT -DHAVE_CONFIG_H -DLOCALEDIR=\"/usr/local/share/locale\" -lm "
RUN_OPTIONS=" "
