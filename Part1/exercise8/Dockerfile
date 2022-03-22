FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN apt-get -qq update && apt-get install -qq curl

COPY script.sh .
RUN chmod +x script.sh

CMD ./script.sh