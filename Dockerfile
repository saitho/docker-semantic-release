FROM node:alpine

# Install Git
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh curl

# Install NPM alternatives
RUN apk add yarn
RUN npm i -g pnpm

# Install NVM
ENV NVM_VERSION=0.35.2
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v$NVM_VERSION/install.sh | bash

RUN node --version
RUN npm --version
RUN pnpm --version
RUN yarn --version