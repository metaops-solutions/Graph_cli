FROM node
RUN whoami

WORKDIR /usr/app

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH "/root/.cargo/bin:$PATH"

RUN npm i @graphprotocol/graph-cli
RUN npm i @graphprotocol/cost-model
RUN npm i @graphprotocol/indexer-cli
