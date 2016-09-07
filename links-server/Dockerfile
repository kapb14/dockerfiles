#FROM debian:jessie
FROM kapb14/wget

MAINTAINER Aleksandr Karushin <kapb14@gmail.com>

WORKDIR /opt

ENV SERVER_RELEASE_URL https://github.com/andreimarcu/linx-server/releases/download/v1.2.3/linx-server-v1.2.3_linux-amd64
ENV GENKEY_RELEASE_URL https://github.com/andreimarcu/linx-server/releases/download/v1.2.3/linx-genkey-v1.2.3_linux-amd64
ENV SITENAME "links-genkey docker image"

#RUN apt-get update \
#&& apt-get install -y wget \
#&& rm -rf /var/lib/apt/lists/*

RUN wget -O /opt/linx-server $SERVER_RELEASE_URL \
&& chmod +x /opt/linx-server

#RUN wget -O /opt/linx-genkey $GENKEY_RELEASE_URL \
#&& chmod +x /opt/linx-genkey

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]


