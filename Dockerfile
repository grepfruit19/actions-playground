FROM node:12

RUN mkdir /app
WORKDIR /app

COPY ./package.json ./package-lock.json ./.npmrc ./
RUN npm ci

COPY index.js ./

EXPOSE 80
CMD ["npm", "start"]