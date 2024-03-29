FROM centos:7

MAINTAINER "Andreas Bellmann" <andreas.bellmann@opitz-consulting.com>

ENV OS_CLI_VERSION_MAJOR 3.4
ENV OS_CLI_VERSION_MINOR 1.2-1

RUN yum -y install curl ca-certificates bash-completion && \
    curl -s -L https://s3.amazonaws.com/oso-preview-docker-registry/client-tools/${OS_CLI_VERSION_MAJOR}/oc-${OS_CLI_VERSION_MAJOR}.${OS_CLI_VERSION_MINOR}-linux.tar.gz -o /tmp/oc.tar.gz && \
    tar zxvf /tmp/oc.tar.gz -C /tmp/ && \ 
    mv /tmp/oc /usr/bin/ && \
    rm -rf /tmp/oc.tar.gz  && \
    oc completion bash > ~/oc-bash-completion.sh && \
    echo source ~/oc-bash-completion.sh >> ~/.bashrc && \
    oc version

CMD ["oc"]
