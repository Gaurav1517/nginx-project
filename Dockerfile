FROM node:20

WORKDIR  /app

COPY Images ./Images
COPY package.json .
COPY server.js .
COPY index.html .

RUN npm install   

EXPOSE 3000

CMD [ "node", "server.js" ]