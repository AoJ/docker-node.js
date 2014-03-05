# docker node.js
#
# VERSION 1.0
#
#

FROM aooj/base:latest
MAINTAINER AooJ <aoj@n13.cz>


RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs && apt-get clean

RUN echo '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bash_profile

