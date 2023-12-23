#dockerize a node app
FROM node:12.16.1-alpine3.11

# Create app directory
WORKDIR /the/workdir/path

# install app dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port 8080
EXPOSE 8080

# Run the app
CMD [ "node", "index.js" ]