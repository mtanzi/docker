FROM mtanzi/base

WORKDIR /root
USER root
ADD rbenv.sh /etc/drone.d/

RUN apt-get update
RUN apt-get -y install wget libreadline-dev libpq-dev

RUN git clone git://github.com/sstephenson/rbenv.git /root/.rbenv              && \
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

RUN export PATH=$PATH:/root/.rbenv/bin  && \
    export RBENV_VERSION=2.1.6          && \
    eval "$(rbenv init -)"              && \
    CC=gcc rbenv install 2.1.6          && \
    rbenv rehash                        && \
    rbenv global 2.1.6                  && \
    rbenv rehash                        && \
    gem install bundler                 && \
    rbenv rehash
