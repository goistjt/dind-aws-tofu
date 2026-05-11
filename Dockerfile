FROM docker:29.4.3-dind-alpine3.23

RUN apk update
RUN apk add python3 py3-pip pipx bash curl jq
RUN curl --proto '=https' --tlsv1.2 -fsSL https://get.opentofu.org/install-opentofu.sh -o install-opentofu.sh
RUN chmod +x install-opentofu.sh
RUN ./install-opentofu.sh --install-method apk
RUN rm -f install-opentofu.sh
RUN pipx install awscli
RUN pipx ensurepath

ENV PATH=${PATH}:/root/.local/bin
