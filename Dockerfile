FROM alpine:3.9

# Install Git
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh curl

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Install NPM alternatives
RUN npm i --g yarn
RUN npm i -g pnpm

# Install NVM
ENV NVM_VERSION=0.35.2
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v$NVM_VERSION/install.sh | bash

# node-gyp requirements
RUN apk add python make g++

RUN git --version
RUN python --version
RUN node --version
RUN npm --version
RUN pnpm --version
RUN yarn --version
RUN make --version
RUN g++ --version