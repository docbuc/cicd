FROM debian:stretch

ENV VALIDATOR_VERSION=18.11.5
ENV HUGO_VERSION=0.55.5

RUN apt-get update && apt-get -y install \
	curl \
	openjdk-8-jre \
	unzip \
	linkchecker \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR /tmp
RUN curl -SL https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
  | tar xzC /tmp && \
  mv /tmp/hugo /usr/local/bin
RUN curl -L "https://github.com/validator/validator/releases/download/$VALIDATOR_VERSION/vnu.jar_$VALIDATOR_VERSION.zip" \
  -o /tmp/vnu.jar.zip \
  && unzip -d /opt /tmp/vnu.jar.zip \
  && rm /tmp/vnu.jar.zip
RUN useradd -ms /bin/bash linkchecker
USER linkchecker
WORKDIR /home/linkchecker
ENTRYPOINT ["/bin/bash"]

