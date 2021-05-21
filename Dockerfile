FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -yqq
RUN apt-get install -yqq build-essential cmake libcairo2-dev libgraphicsmagick1-dev libpng-dev git
RUN git clone --recurse-submodules https://github.com/cpp-io2d/P0267_RefImpl \
    && cd P0267_RefImpl \
    && mkdir Debug \
    && cd Debug \
    && cmake --config Debug "-DCMAKE_BUILD_TYPE=Debug" .. \
    && cmake --build .