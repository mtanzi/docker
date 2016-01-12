FROM mtanzi/ruby:2.1.6
# FROM springest/ruby:2.1.6

RUN apt-get update

RUN apt-get install -y build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev wget\
  libpng-dev libjpeg-dev python libx11-dev libxext-dev

# Phantomjs
RUN mkdir -p /usr/src \
    && cd /usr/src \
    && wget https://github.com/Pyppe/phantomjs2.0-ubuntu14.04x64/raw/master/bin/phantomjs

RUN cp /usr/src/phantomjs /usr/local/bin/phantomjs \
    && chmod a+x /usr/local/bin/phantomjs

RUN gem install bundler

CMD /bin/bash
