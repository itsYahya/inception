FROM alpine:3.16

RUN apk update

RUN apk add vsftpd

COPY ./tools/script.sh .

RUN chmod +x ./script.sh

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

CMD [ "./script.sh" ]