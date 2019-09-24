FROM node:11

  RUN mkdir -p /usr/src/service

  WORKDIR /usr/src/service

  COPY package.json .

  RUN npm install --quiet

  COPY . .
  # COPY wait-for-it.sh /usr/src/app

  EXPOSE 8181