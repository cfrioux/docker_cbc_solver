# Base for cbc_solver
#
# VERSION 0.1
#
# build : docker build -t image_name .
# usage: docker run -ti -v /path/to/share:/mount/point image_name bash
#

FROM ubuntu:latest
MAINTAINER clemence.frioux@inria.fr

# wget and pip
RUN apt-get update && \
    apt-get install -qqy python-setuptools python-dev wget build-essential git unzip && \
    apt-get clean && apt-get purge
# cbc
RUN wget https://ampl.com/dl/open/cbc/cbc-linux64.zip && unzip cbc-linux64.zip

