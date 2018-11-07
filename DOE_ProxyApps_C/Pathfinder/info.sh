bench_name="Pathfinder"
source_files=( "bitfield.c" "configuration.c" "gettime.c" "graph.c" "graphGen.c" "main.c" "node.c" "parsing.c" "searchAlgorithms.c" "searchDiagram.c" "statistics.c" "systemCallMap.c" "utils.c" "vectorUtils.c" "yaml.c" )
COMPILE_FLAGS=" -lm "
RUN_OPTIONS=" -x medsmall1.adj_list "
