FROM node:current-alpine
LABEL authors="Aneesh Reddy"

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

CMD ["node", "index.js"]