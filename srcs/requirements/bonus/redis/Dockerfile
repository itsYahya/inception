FROM alpine

RUN apk update

RUN apk --update add redis

COPY ./conf/redis.conf /etc/redis.conf

COPY ./tools/script.sh .

RUN chmod +x ./script.sh

CMD [ "./script.sh" ]