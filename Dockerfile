FROM node:12-alpine

WORKDIR /app
COPY . .

RUN npm i 
EXPOSE 2010/tcp
CMD [ "npm", "start" ]