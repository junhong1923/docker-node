FROM node

LABEL maintainer = "Jun Hong Lin <m81923@gmail.com>"

WORKDIR /home/app

COPY package*.json ./

RUN npm install && \
    rm -r /home/node

COPY . .

EXPOSE 3000
# CMD ["node", "app.js"]

# build image: docker build . -t junhong/node-web-app:0.0.1-dev
# run container: docker run -it --rm -p 3333:3000 --name myNode 3569a9136f62 bash