FROM debian:stretch

# Install dependencies required for link-checker distribution installation
RUN apt-get update && apt-get install -y \
      linkchecker \
  && rm -rf /var/lib/apt/lists/*

USER www-data
ENTRYPOINT ["linkchecker"]
CMD ["-h"]
