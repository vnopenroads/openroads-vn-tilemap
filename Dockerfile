FROM node:10.23.2-alpine

# install gettext for envsubst
# - it needs libintl package
# - only weights 100KB combined with it's libraries
RUN apk update && \
    apk add --update libintl && \
    apk add --virtual build_deps gettext && \
    mv /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del build_deps

# Dependency for mapnik
RUN apk add gcompat

# Install node modules
ENV NPM_CONFIG_LOGLEVEL=warn
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

# Change to app directory
WORKDIR /opt/app
ADD . /opt/app

CMD ["npm", "start"]
