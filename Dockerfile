FROM node:latest

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json .

RUN npm i

COPY . .

EXPOSE 5000
EXPOSE 8080

#ENTRYPOINT npm run backend

CMD npm run backend & npm run serve