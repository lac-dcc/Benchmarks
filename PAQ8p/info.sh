bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=($(ls *.cpp)) ;
CXXFLAGS=" -DNOASM -DLLVM -lstdc++ -lm " ;
COMPILER=clang++ ;

if [[ $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS=" -4 file1.in " ;
else
  RUN_OPTIONS=" -1 small.in " ;
fi
