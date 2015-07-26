FROM mtanzi/base

WORKDIR /root
USER root

RUN apt-get install -y wget
RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
    && dpkg -i erlang-solutions_1.0_all.deb

RUN apt-get update
RUN apt-get install -y elixir

CMD ["bash"]
