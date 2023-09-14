FROM registry.redhat.io/openshift4/ose-cli

USER 0
WORKDIR /opt/kubeseal

RUN curl -L -O https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.23.1/kubeseal-0.23.1-linux-amd64.tar.gz && \
    tar zxvf kubeseal-0.23.1-linux-amd64.tar.gz && rm -rf kubeseal-0.23.1-linux-amd64.tar.gz

USER 1001

ENTRYPOINT ["/opt/kubeseal/kubeseal"]
