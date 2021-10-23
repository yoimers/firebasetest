FROM node:12.19.1

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . ./

EXPOSE 8080

RUN chmod +x ./start.sh
CMD  ["./start.sh"]