FROM node:4.2
LABEL maintainer="Marc Farra <marc@developmentseed.org>"

# install gettext for envsubst
RUN apt-get update
RUN apt-get install -y gettext-base

# Install node modules
ENV NPM_CONFIG_LOGLEVEL=warn
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

# Change to app directory
WORKDIR /opt/app
ADD . /opt/app

CMD ["npm", "start"]
