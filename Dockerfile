FROM node:16

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install --production

EXPOSE 3000

CMD ["npm", "run", "start"]