FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
ENV PORT=3092
EXPOSE 3092
CMD ["node", "app.js"]
