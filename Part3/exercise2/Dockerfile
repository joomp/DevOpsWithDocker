FROM ubuntu
WORKDIR /usr/app

RUN apt-get update && apt-get install -qq curl
RUN curl -fsSL https://get.docker.com/ | sh
RUN apt-get install -qq git

COPY script.sh .
VOLUME [ "/var/run/docker.sock" ]

CMD ./script.sh