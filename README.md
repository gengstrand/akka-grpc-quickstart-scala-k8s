# Hello World GRPC

This repo demonstrates how to run a bi-directional streaming GRPC session between two backend Scala services in Kubernetes.

I got the actual [code](https://example.lightbend.com/v1/download/akka-grpc-quickstart-scala?name=akka-grpc-quickstart-scala&_ga=2.170055330.305510131.1650731951-663573833.1650731951) from this [tutorial](https://developer.lightbend.com/guides/akka-grpc-quickstart-scala/index.html) which some slight modifications.

## the server

```bash
sbt compile
docker build -t grpc-server:1.0 .
# tag and push the image appropriately
# edit the manifest to match what was pushed
kubectl create -f grpc-server.yaml
# wait a while because this takes a long time to load
```

## the client

```bash
docker build --file Dockerfile.client -t grpc-client:1.0 .
# tag and push the image appropriately
# edit the manifest to match what was pushed
kubectl create -f grpc-client.yaml
```
