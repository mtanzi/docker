FROM mtanzi/ruby:2.1.6

RUN apt-get update
RUN apt-get install freetype* fontconfig

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
