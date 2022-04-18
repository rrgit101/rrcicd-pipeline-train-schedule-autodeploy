FROM node:carbon
WORKDIR /usr/src/app
#COPY package*.json ./
RUN npm install
#COPY . .
ADD package*.json /usr/src/app
ADD . .
EXPOSE 8080
CMD [ "npm", "start" ]
