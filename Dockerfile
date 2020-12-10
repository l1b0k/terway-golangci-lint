FROM golang:1.15
LABEL maintainer="l1b0k"
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update && apt-get install -y --no-install-recommends \
    nodejs shellcheck gnupg2 \
    && rm -rf /var/lib/apt/lists/* && npm install -g markdown-link-check markdownlint-cli
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /usr/bin v1.33.0
