FROM alpine:3.16

RUN apk update

RUN apk add --no-cache python3 py3-pip

RUN pip install flask

WORKDIR /app

COPY ./tools/ .

RUN chmod +x ./script.sh

CMD [ "./script.sh" ]