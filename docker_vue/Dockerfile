FROM debian:latest

# install simple http server for serving static content
RUN apt-get update && apt-get install -y git curl 
RUN apt-get install -y gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh && chmod 755 nodesource_setup.sh && ./nodesource_setup.sh
RUN apt-get install -y nodejs build-essential 
RUN npm set registry https://registry.npm.taobao.org && npm set disturl https://npm.taobao.org/dist
#RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
#COPY package*.json ./
#RUN npm install
# install project dependencies

# copy project files and folders to the current working directory (i.e. 'app' folder)
#COPY . .

# build app for production with minification
#RUN npm run build

#EXPOSE 8080
#CMD [ "http-server", "dist" ]
