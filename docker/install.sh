#!/bin/bash -Eeu

mono nuget.exe restore -PackagesDirectory .

mkdir /moq
mv Moq.*                        /moq
mv Castle.Core.*                /moq
mv NUnit.*/lib                  /moq
mv NUnit.ConsoleRunner.*/tools  /moq

mv red_amber_green.rb /usr/local/bin
