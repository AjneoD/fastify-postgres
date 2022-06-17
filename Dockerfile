FROM node:16.15.1

#Vreate app directory
WORKDIR /usr/src/app

#Install dependencies
#Wildcard for all packages in package.json and package-lock.json
COPY package*.json ./

RUN npm install

#install dependencies fro production
#Run npm ci --only=production

#Bundle app source
COPY . .

EXPOSE 8080

CMD ["node", "src/server.js"]
