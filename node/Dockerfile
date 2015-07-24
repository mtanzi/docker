FROM mtanzi/base

WORKDIR /root
USER root

RUN apt-get update -y && apt-get install --no-install-recommends -y -q python ca-certificates curl chrpath libfontconfig1-dev
RUN mkdir /nodejs && curl https://nodejs.org/dist/v0.12.7/node-v0.12.7-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

# Phantomjs
RUN mkdir /tmp/phantomjs \
    && cd /tmp/phantomjs \
    && apt-get update \
    \
    && wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 \
    && tar xjf phantomjs-1.9.8-linux-x86_64.tar.bz2 \
    \
    && install -t /usr/local/bin phantomjs-1.9.8-linux-x86_64/bin/phantomjs \
    \
    && rm -rf phantomjs-1.9.8-linux-x86_64 \
    && rm phantomjs-1.9.8-linux-x86_64.tar.bz2 \
    \
    && rm -rf /tmp/phantomjs

RUN npm install -g npm
RUN npm install -g jspm
