FROM alpine:3.16

RUN apk update

RUN apk add nginx

COPY ./tools/script.sh .

RUN chmod +x ./script.sh

COPY ./conf/default.conf /etc/nginx/http.d/

RUN mkdir -p /etc/ssl/private

RUN chmod 700 /etc/ssl/private

RUN apk add openssl

CMD [ "./script.sh" ]
