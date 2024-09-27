ARG GO_VERSION=1.23

FROM golang:${GO_VERSION}

ARG TERRAFORM_VERSION=1.9.3

RUN apt update && apt install unzip

RUN cd /tmp && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /tmp && \
    mv terraform /usr/local/bin/terraform
