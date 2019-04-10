FROM node:lts-alpine

# development/production
ENV NODE_ENV=development

RUN apk update && \
    npm install -g npm && \
    npm install -g @angular/cli

WORKDIR /app
RUN npm install

EXPOSE 4200
CMD ["ash"]
