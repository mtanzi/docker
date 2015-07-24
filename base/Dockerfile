FROM library/ubuntu-debootstrap

ADD rootfs/etc /etc/
ADD rootfs/root /root/
RUN whoami && chmod 0440 /etc/sudoers

WORKDIR /root
USER root
ENV HOME /root
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LOGNAME root
ENV TERM xterm

RUN apt-get update

# Basic packages
RUN apt-get -y install git git-core socat

# gcc and build tools
RUN apt-get -y install gcc clang
RUN apt-get -y install automake autoconf autogen libtool
RUN apt-get -y install make cmake gdb bison unzip flex

# build-essential
RUN apt-get -y install build-essential

# zlib
RUN apt-get -y install zlib1g zlib1g-dev

# wget and curl
RUN apt-get -y install curl wget

# openssl
RUN apt-get install libssl-dev

# postgresql 9.3
RUN apt-get -y install postgresql-client-9.3 postgresql-client-common