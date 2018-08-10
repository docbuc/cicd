FROM openjdk:8-jre

ENV VALIDATOR_VERSION=18.3.0

WORKDIR /src

RUN curl -L "https://github.com/validator/validator/releases/download/$VALIDATOR_VERSION/vnu.jar_$VALIDATOR_VERSION.zip" \
  -o /src/vnu.jar.zip \
  && unzip /src/vnu.jar.zip \
  && rm /src/vnu.jar.zip

EXPOSE 8888
# CMD ["/usr/bin/java", "-cp", "/src/dist/vnu.jar", "nu.validator.servlet.Main", "8888"]
USER www-data
ENTRYPOINT ["/usr/bin/java", "-jar", "/src/dist/vnu.jar" ]
CMD ["--help"]
