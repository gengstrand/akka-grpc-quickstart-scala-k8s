FROM openjdk:14-jdk-alpine
RUN apk add bash
RUN mkdir /usr/app
WORKDIR /usr/app
COPY target /usr/app/
EXPOSE 8080
CMD ["/bin/sh", "-c", "universal/stage/bin/greeter-server"]

