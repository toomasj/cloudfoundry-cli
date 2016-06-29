FROM ubuntu:14.04

ADD https://cli.run.pivotal.io/stable?release=linux64-binary&version=6.19.0 /tmp/cf-cli.tgz

RUN mkdir -p /usr/local/bin && \
    tar -xzf /tmp/cf-cli.tgz -C /usr/local/bin && \
    cf --version
