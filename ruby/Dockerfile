FROM mtanzi/drone-base

WORKDIR /root
USER root
ADD rbenv.sh /etc/drone.d/

RUN apt-get update
RUN apt-get -y install wget

RUN git clone git://github.com/sstephenson/rbenv.git /root/.rbenv              && \
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

RUN export PATH=$PATH:/root/.rbenv/bin  && \
    export RBENV_VERSION=1.9.3-p547     && \
    eval "$(rbenv init -)"              && \
    CC=gcc rbenv install 1.9.3-p547     && \
    rbenv rehash                        && \
    rbenv global 1.9.3-p547             && \
    rbenv rehash                        && \
    gem install bundler                 && \
    rbenv rehash
