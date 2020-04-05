FROM alpine:3.11
LABEL maintainer="vladimir@deviant.guru"

RUN apk add --no-cache pdns-backend-geoip pdns-backend-lua pdns-backend-pgsql pdns
COPY pdns.conf /etc/pdns/pdns.conf

ENTRYPOINT [ "/usr/sbin/pdns_server" ]
CMD [ "--config-dir=/etc/pdns" ]
