FROM openjdk:8
RUN \
  apt-get update && \
  mkdir /usr/app
WORKDIR /usr/app
COPY . /usr/app/
EXPOSE 8080
CMD ["/bin/sh", "-c", "./sbt \"runMain com.example.helloworld.GreeterServer\""]

