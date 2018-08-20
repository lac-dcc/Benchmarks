bnc_name="yacr2" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "assign.c" "channel.c" "hcg.c" "main.c" "maze.c" "option.c" "vcg.c" )
CXXFLAGS=" -DTODD " ;
RUN_OPTIONS=" input2.in " ;
