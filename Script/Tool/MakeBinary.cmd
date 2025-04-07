@echo off

pushd Tool\Z.Make.Binary
dotnet build -v quiet
popd