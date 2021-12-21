# need alpine image that has node
FROM node:alpine

# working directory of container
WORKDIR /usr/app

# we  are copying everything from current working directory to container directory
COPY ./ ./


RUN npm install

CMD ["npm", "start"]
