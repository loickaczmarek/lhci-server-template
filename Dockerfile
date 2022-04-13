FROM node:14-bullseye-slim

USER node

WORKDIR /home/node
COPY package.json .
COPY lighthouserc.json .
RUN npm install

EXPOSE 9001
CMD [ "npm", "start" ]
