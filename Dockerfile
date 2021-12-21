# need alpine image that has node
FROM node:alpine

# working directory of container
WORKDIR /usr/app

# Here we copy the json file before, so that our cache does not need to be rebult everytime , we run the build command
COPY ./package.json ./
RUN npm install

COPY ./ ./

CMD ["npm", "start"]
