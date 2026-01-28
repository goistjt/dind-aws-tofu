FROM docker:29.2.0-dind-alpine3.23

RUN apk update
RUN apk add python3 py3-pip pipx opentofu bash curl jq
RUN pipx install awscli
RUN pipx ensurepath
