FROM redislabs/rejson:latest

WORKDIR /etc/redis

COPY conf .

RUN redis-server /etc/redis/redis.conf

ENV WAIT_VERSION 2.7.2

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait

RUN chmod +x /wait

# CMD redis-cli  --cluster create  172.38.0.12:6379 172.38.0.13:6379 --cluster-replicas 1
