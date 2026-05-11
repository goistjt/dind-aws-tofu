FROM docker:29.4.3-dind-alpine3.23

RUN apk update
RUN apk add python3 py3-pip pipx opentofu~1.11 bash curl jq
RUN pipx install awscli
RUN pipx ensurepath

ENV PATH=${PATH}:/root/.local/bin
