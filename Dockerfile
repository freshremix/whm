FROM node:20-alpine

WORKDIR /

COPY package.json package-lock.json* ./

RUN npm install

COPY . .

EXPOSE 3021

CMD ["npm", "start"]
