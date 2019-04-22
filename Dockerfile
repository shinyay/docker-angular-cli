# https://hub.docker.com/r/library/node/tags/
FROM node:lts-alpine

# development/production
ENV NODE_ENV=development

#https://www.npmjs.com/package/@angular/cli?activeTab=versions
RUN apk update && \
    apk add --update python make git && \
    npm install -g npm && \
    npm install -g @angular/cli@7.3.6

WORKDIR /app
RUN npm install

EXPOSE 4200
CMD ["ash"]
