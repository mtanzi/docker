FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

# Install tools & libs to compile everything
RUN apt-get update && apt-get install -y build-essential libssl-dev libreadline-dev wget && apt-get clean

# Install ruby-build
RUN apt-get install -y git-core && apt-get clean
RUN git clone https://github.com/sstephenson/ruby-build.git && cd ruby-build && ./install.sh

# Install ruby 2.1.6
ENV CONFIGURE_OPTS --disable-install-rdoc
RUN ruby-build 2.1.6 /usr/local
RUN gem install bundler

# postgresql 9.3
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN apt-get update && apt-get install -y python-software-properties software-properties-common postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3
