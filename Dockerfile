# this docker file to create docker image for react app

# to get node as base image to run react
FROM node:latest

# create working directory
WORKDIR /app

# copy backage.json to the working directory
COPY package.json /app/

# install all the packages that app needs from backage.json
RUN npm install


# copy all files to the working directory
COPY . /app

# define port where app start
EXPOSE 3000

# start dev version
CMD [ "npm","run","start" ]

# start production version
# CMD [ "npm","run","build" ]