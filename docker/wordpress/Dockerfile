FROM wordpress:

RUN apt-get update
RUN apt-get install -y \
    procps \
    nginx \
    mysql-server \
    php

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]