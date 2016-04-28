FROM busybox

ADD https://cli.run.pivotal.io/stable?release=linux32-binary&version=6.17.0 /tmp/cf-cli.tgz

RUN mkdir -p /usr/local/bin && \
    tar -xzf /tmp/cf-cli.tgz -C /usr/local/bin && \
    cf --version
