bnc_name="$(basename $(pwd))" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "calcMetricsData.c" "chooseEntry.c" "clearLine.c" "closeFiles.c" "consistent.c" "createDataObject.c" "createIndexEntry.c" "createIndexNode.c" "delete.c" "deleteDataObject.c" "deleteEntry.c" "deleteIndexEntry.c" "deleteIndexNode.c" "errorMessage.c" "getDeleteCommand.c" "getFloat.c" "getInitCommand.c" "getInsertCommand.c" "getInt.c" "getKeyAttribute.c" "getNextCommandCode.c" "getNonKeyAttribute.c" "getQueryCommand.c" "getString.c" "initMetricsData.c" "insert.c" "insertEntry.c" "keyUnion.c" "main.c" "openFiles.c" "outputMetricsData.c" "outputQuery.c" "partitionEntries.c" "penalty.c" "query.c" "setMetricsData.c" "splitNode.c" "timer.c" "updateMetricsData.c" "valid.c" "volume.c" )
CXXFLAGS="" ;

PROJ_SRC_DIR=$(pwd) ;
if [[ -n $SMALL_PROBLEM_SIZE ]]; then
  RUN_OPTIONS="-i ${PROJ_SRC_DIR}/dbms.train.in" ;
else
  RUN_OPTIONS="-i ${PROJ_SRC_DIR}/dbms.ref.in" ;
fi
