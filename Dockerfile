#Build node image from Node Docker Hub
FROM ubuntu:latest

#Make app directory in container
RUN mkdir /app

#Identify working directory
WORKDIR /app

#Copy package
COPY package.json /app

#Install rpm packages from package.json
RUN npm install
#RUN npm install ibm_db
#Copy over app to app folder
COPY . /app 

#Expose server at port ( accessible outside of container)
EXPOSE 3000 

#Start app 
CMD ["node", "server.js"]
