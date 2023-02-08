FROM node:12.18.1-alpine
ARG NG_CLI_ANALYTICS="false"
WORKDIR /app
COPY [ "OptechX", "/app" ]

RUN npm install --no-optional --cache /tmp/empty-cache --save