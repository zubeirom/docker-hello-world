FROM node:14.18.2-alpine3.12
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm ci --only=production && npm cache clean --force
COPY . /app
CMD node app.js
EXPOSE 8081