#!/usr/bin/env bash
set -Eeu

# After the dotnet command has run ~/.nuget/packages contains nunit/ ...
# so it is important the current user is sandbox.
# Also, the /tmp dir has a csproj file (copied into the docker/ dir ready to be used
# in the start-point)

[ "$(whoami)" == sandbox ] || (>&2 echo 'User must be sandbox' ; kill -INT $$)
cd /tmp
dotnet new nunit
dotnet add package Moq

# Install NUnit runner - will save ~1.5 seconds compared with dotnet test
dotnet tool install --global NUnit.ConsoleRunner.NetCore --version 3.22.0
