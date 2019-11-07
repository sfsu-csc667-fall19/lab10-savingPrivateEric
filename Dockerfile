FROM node:10-alpine

# set working directory (first directory executor is placed into on run)
WORKDIR /main
# copies contents of current directory into docker image
COPY . /main

RUN npm install

# port to expose
EXPOSE 80
# pretty much emulates node index.js
CMD ["node", "index.js"]