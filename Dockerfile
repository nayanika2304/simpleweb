# docker file is run line by line so the order of the file matters a lot
# here npm install will run only if there are any changes in package.json otherwise it will use it from cache
# the line after npm install will run everytime any other file is changed in the project

# Specify a base image:version(alpine is the smallest)s
FROM node:alpine

# mention the directory to put in the container and the application to isolate it
WORKDIR /usr/app

#Install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#default command
CMD ["npm","start"]
