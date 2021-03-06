FROM node:12.18.1
ENV NODE_ENV=production
ENV PORT=8080
EXPOSE 8080

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "index.js" ]