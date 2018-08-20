bnc_name="Pathfinder" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;
source_files=( "bitfield.c" "configuration.c" "gettime.c" "graph.c" "graphGen.c" "main.c" "node.c" "parsing.c" "searchAlgorithms.c" "searchDiagram.c" "statistics.c" "systemCallMap.c" "utils.c" "vectorUtils.c" "yaml.c" )
CXXFLAGS=" -lm " ;
RUN_OPTIONS=" -x medsmall1.adj_list " ;
