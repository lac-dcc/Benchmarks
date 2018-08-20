bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "Divsol.c" "Jacobi.c" "MM.c" "QRfact.c" "Triang.c" "main.c" "print.c" )
CXXFLAGS=" -lm " ;
