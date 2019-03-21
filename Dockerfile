# https://hub.docker.com/r/library/node/tags/
FROM node:10.15-stretch

# https://www.npmjs.com/package/@angular/cli?activeTab=versions
RUN npm install -g @angular/cli@7.3.6

WORKDIR /app

# EXPOSE 4200
