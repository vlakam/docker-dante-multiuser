FROM    alpine:latest
WORKDIR /app

RUN     apk add --no-cache dante-server
        
COPY    sockd.conf /etc/
COPY    docker-entrypoint.sh /
COPY    scripts .

EXPOSE  1080

ENTRYPOINT [ "/docker-entrypoint.sh"]
CMD     ["sockd"]
