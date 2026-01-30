FROM docker:28.5.2-dind-alpine3.22

RUN apk update
RUN apk add python3 py3-pip pipx opentofu bash curl jq
RUN pipx install awscli
RUN pipx ensurepath

ENV PATH=${PATH}:/root/.local/bin
