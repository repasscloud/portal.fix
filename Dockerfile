FROM node:12.18.1-alpine
ARG NG_CLI_ANALYTICS="false"
WORKDIR /app

# Install the old packages first
COPY [ "var/package.json", "/app/package.json" ]
RUN npm install --save-dev fsevents@2.1.2
RUN npm install --no-optional --cache /tmp/empty-cache --save

# Copy remaining data
COPY [ "OptechX", "/app" ]
RUN ls -l

