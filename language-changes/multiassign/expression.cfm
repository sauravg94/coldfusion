<cfscript>
maxRecordsToProcess = 40;
recordsAlreadyProcessed = 0;
recordsProcessedInThisTranche = 0;

writeOutput("Start Processing Records Activity:<br>");
while ((recordsAlreadyProcessed += recordsProcessedInThisTranche) < maxRecordsToProcess){
    writeOutput("Processing Records<br>");
    recordsProcessedInThisTranche = 19;
}
writeOutput("Completed<br>");
</cfscript>