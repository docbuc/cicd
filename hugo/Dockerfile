# Datei: hugo/Dockerfile
FROM alpine:3.7
ENV HUGO_VERSION=0.37.1
WORKDIR /tmp
RUN wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
  -O /tmp/hugo.tar.gz && \
  tar xf /tmp/hugo.tar.gz && \
  mv /tmp/hugo /usr/local/bin && \
  rm /tmp/hugo.tar.gz
WORKDIR /src
EXPOSE 1313
USER guest
ENTRYPOINT ["hugo"]

