FROM perl:5.26

WORKDIR /app

RUN cpanm Carton Amon2 \
    && amon2-setup.pl HelloWorld || :

WORKDIR /app/HelloWorld

RUN sed -i "2i requires 'IO::Interface::Simple';" cpanfile \
    && carton install \
    && sed -i '8i use IO::Interface::Simple;' script/helloworld-server \
    && sed -i -E "s;('127\.0\.0\.1');IO::Interface::Simple->new('eth0')->address // \1;" script/helloworld-server

CMD ["carton", "exec", "--", "perl", "script/helloworld-server"]