FROM            alpine:latest

ENV             ANSIBLE_VERSION=2.9.11
ENV             ANSIBLE_LINT_VERSION=6.2.1

# Dependencies
RUN             apk update && \
                apk add --no-cache --progress bash python3 openssl ca-certificates openssh sshpass && \
                apk add --update --virtual build-dependencies python3-dev py3-pip libffi-dev openssl-dev build-base && \
                pip3 install --upgrade pip && \
                pip3 install ansible==${ANSIBLE_VERSION} && \
                pip3 install ansible-lint==${ANSIBLE_LINT_VERSION} && \
                apk del py3-pip build-dependencies --purge && \
                rm -rf /var/cache/apk/*

# Entrypoint
COPY            /ansible/entrypoint.sh /entrypoint.sh

ENTRYPOINT      ["/bin/bash", "/entrypoint.sh"]