FROM node:12.18.1-alpine
ARG NG_CLI_ANALYTICS="false"
WORKDIR /app

# Install the old packages first
COPY [ "var/package.json", "/app/package.json" ]
# RUN npm install tslib@1.10.0 && \
#   npm install zone.js@~0.10.2 && \
#   npm install @angular/core@9.0.0 && \
#   npm install @angular/core@10.1.6 && \
#   npm install @angular/forms@9.0.0 && \
#   npm install @angular/localize@9.0.0 && \
#   npm install popper.js@1.16.1 && \
#   npm install @angular/common@13.0.0 && \
#   npm install @angular/animations@13.0.0 && \
#   npm install @angular/forms@13.0.0 && \
#   npm install @angular/cdk@13.0.0
RUN npm install --no-optional --cache /tmp/empty-cache --save
RUN npm i npm-install-peers -D

# Copy remaining data
COPY [ "OptechX", "/app" ]
RUN ls -l

