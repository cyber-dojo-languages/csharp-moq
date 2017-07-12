FROM  cyberdojofoundation/csharp:4.6.1
LABEL maintainer=jon@jaggersoft.com

COPY packages.config .

RUN  apk add --update openssl \
  && wget http://nuget.org/nuget.exe \
  && mono --runtime=v4.0 nuget.exe restore -PackagesDirectory . \
  && mkdir /moq \
  && mv Moq.4.0.10827       /moq \
  && mv NUnit.2.6.2         /moq \
  && mv NUnit.Runners.2.6.1 /moq

COPY red_amber_green.rb /usr/local/bin
