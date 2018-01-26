FROM  cyberdojofoundation/csharp:5.4.1.0
LABEL maintainer=jon@jaggersoft.com

COPY packages.config .

RUN  apk add --update openssl \
  && wget http://dist.nuget.org/win-x86-commandline/latest/nuget.exe \
  && mono --runtime=v4.5 nuget.exe restore -PackagesDirectory . \
  && mkdir /moq \
  && mv Moq.*                        /moq \
  && mv Castle.Core.*                /moq \
  && mv NUnit.*/lib                  /moq \
  && mv NUnit.ConsoleRunner.*/tools  /moq

COPY red_amber_green.rb /usr/local/bin
