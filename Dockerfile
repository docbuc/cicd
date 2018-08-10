# Datei: webpage/Dockerfile
FROM nginx:1

ENV HUGO_VERSION=0.37.1

RUN apt-get update && apt-get -y install curl \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /src
COPY dockerbuch.info/ /src/
RUN curl -SL https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
  | tar xzC /tmp \
  && /tmp/hugo -d /usr/share/nginx/html/ \
  && rm /tmp/hugo
VOLUME [ "/usr/share/nginx/html" ]

