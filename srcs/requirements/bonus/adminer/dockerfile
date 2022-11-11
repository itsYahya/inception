FROM alpine:3.10

RUN apk update

RUN apk add wget acl bzip2 gzip php7 php7-session php7-bz2 php7-mysqli php7-mysqlnd php7-pgsql php7-pdo_pgsql php7-sqlite3 php7-pdo_sqlite php7-zip sqlite

WORKDIR /app

RUN wget "http://www.adminer.org/latest.php" -O /app/adminer.php

COPY ./tools/script.sh .

RUN chmod +x ./script.sh

CMD [ "./script.sh" ]
