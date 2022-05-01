FROM openjdk:8
RUN mkdir /usr/app
WORKDIR /usr/app
COPY target /usr/app/
EXPOSE 8080
CMD ["/bin/sh", "-c", "universal/stage/bin/greeter-server"]

