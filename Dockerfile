FROM ubuntu:18.04

RUN apt-get update \
    && apt-get -y install \
    build-essential \
    cmake \
    git \
    vim

COPY app/ /app/

ENTRYPOINT ["./app/execute_unit_tests.sh"]
