bench_name="adpcm-rawdaudio"

source_files=("rawdaudio.c" "adpcm.c")
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=""
STDIN=" ../data/clinton.adpcm "
