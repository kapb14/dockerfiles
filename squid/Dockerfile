FROM alpine

RUN apk add --no-cache \
      ca-certificates \
      netcat-openbsd \
      net-tools \
      tini \
      curl \
      bash \
      bash-completion \
      squid \
      squid-lang-ru \
  && mkdir -v /var/spool/squid \
  && chown -R squid:squid /var/spool/squid \
  && mv -v /etc/squid/squid.conf /etc/squid/squid.conf.orig

COPY squid.conf /etc/squid/squid.conf

USER squid

VOLUME [ "/var/spool/squid" ]

EXPOSE 3128

ENTRYPOINT [ "tini", "squid" ]

CMD [ "-d 1", "-N" ]

