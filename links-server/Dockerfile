FROM debian:jessie

MAINTAINER Aleksandr Karushin <kapb14@gmail.com>

ENV APP_VERSION v1.2.3
ENV APP_RELEASE_URL https://github.com/andreimarcu/linx-server/releases/download/v1.2.3/linx-server-v1.2.3_linux-amd64

# ADD $APP_RELEASE_URL
# ADD https://github.com/andreimarcu/linx-server/releases/download/v1.2.3/linx-server-v1.2.3_linux-amd64 /opt

RUN apt-get update \
&& apt-get install -y \
	wget \
&& wget -O /opt/linx-server $APP_RELEASE_URL \
&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/opt/linx-server"]
CMD ["--help"]




