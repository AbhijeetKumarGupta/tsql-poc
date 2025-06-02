echo "Building .dacpac"
dotnet build DatabaseProjecthands.sqlproj
echo ".dacpac built successfully"

echo "Deploying Project"
sqlpackage /Action:Publish \
    /SourceFile:bin/Debug/DatabaseProjecthands.dacpac \
    /TargetServerName:localhost,1433 \
    /TargetDatabaseName:hands \
    /TargetUser:sa \
    /TargetPassword:{password} \
    /TargetEncryptConnection:False
echo "Deployed"