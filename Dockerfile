FROM nginx:alpine
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
EXPOSE 8080
CMD [ "node", "start" ]
