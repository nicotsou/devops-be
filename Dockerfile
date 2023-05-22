FROM node:18-alpine
WORKDIR /usr/src/app
COPY package.json /
COPY yarn.lock /
RUN yarn install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["node", "dist/main.js"]