FROM node:12.18.1
ARG NG_CLI_ANALYTICS="false"
WORKDIR /app

# Install the old packages first
COPY [ "var/package.json", "/app/package.json" ]
RUN npm install --no-optional --cache /tmp/empty-cache --save
RUN npm -g npm-install-peers

# Copy remaining data
COPY [ "OptechX", "/app" ]
RUN ls -l

