FROM buildpack-deps:jessie-curl
MAINTAINER Octoblu Inc. <docker@octoblu.com>

RUN curl --silent -L https://github.com/coreos/etcd/releases/download/v2.0.13/etcd-v2.0.13-linux-amd64.tar.gz | tar -xz -C /opt/
ENV PATH $PATH:/opt/etcd-v2.0.13-linux-amd64

COPY genenv .
ENTRYPOINT ["./genenv"]
