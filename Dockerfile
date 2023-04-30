FROM node:18-slim
ENV TZ="Europe/Paris"
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
EXPOSE 8080
CMD [ "node", "server.js" ]
