FROM debian:buster

RUN apt update

RUN apt install curl -y

RUN curl -L https://github.com/google/cadvisor/releases/download/v0.37.5/cadvisor -o /usr/bin/cadvisor

RUN chmod +x /usr/bin/cadvisor

COPY ./tool/script.sh .

RUN chmod +x ./script.sh

ENTRYPOINT [ "./script.sh" ]