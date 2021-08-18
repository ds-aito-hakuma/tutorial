FROM perl:5.26

# 環境変数の設定(ENV命令)
# vimの文字化けの設定
ENV LANG C.UTF-8
ENV LANGUAGE en_US

WORKDIR /app

RUN cpanm Carton Amon2 \
    && amon2-setup.pl HelloWorld || : \
    && apt-get update \
    && apt-get -y install vim


WORKDIR /app/HelloWorld

ADD myfile.txt /app/HelloWorld/tmpl
ADD index.tx /app/HelloWorld/tmpl

RUN sed -i "2i requires 'IO::Interface::Simple';" cpanfile \
    && carton install \
    && sed -i '8i use IO::Interface::Simple;' script/helloworld-server \
    && sed -i -E "s;('127\.0\.0\.1');IO::Interface::Simple->new('eth0')->address // \1;" script/helloworld-server 


CMD ["carton", "exec", "--", "perl", "script/helloworld-server"]