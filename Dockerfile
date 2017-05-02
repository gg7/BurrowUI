FROM node:boron

RUN npm install -g '@angular/cli'

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

RUN npm install
RUN ng build

EXPOSE 3000
CMD [ "node", "server" ]
