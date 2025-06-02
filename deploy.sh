echo "Building .dacpac"
dotnet build TSQLPOC.sqlproj
echo ".dacpac built successfully"

echo "Deploying Project"
sqlpackage /Action:Publish \
    /SourceFile:bin/Debug/TSQLPOC.dacpac \
    /TargetServerName:localhost,1433 \
    /TargetDatabaseName:hands \
    /TargetUser:sa \
    /TargetPassword:{password} \
    /TargetEncryptConnection:False
echo "Deployed"