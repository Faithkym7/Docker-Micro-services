# E-Commerce Dashbaord Application
This repository contains a Dockerized e-commerce application that allows you to manage and add products. The application uses a MongoDB database and is built with Node.js and React. The goal is to create a containerized environment for running the application.
##
To see the images check my dockerhub profiles
https://hub.docker.com/u/faithkimani

## Requirements
Make sure that you have the following installed:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04) 
- npm 
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`
- [Docker](https://docs.docker.com/engine/install/) is installed on your machine

## Navigate to the Client Folder 
 `cd client`

## Run the folllowing command to install the dependencies 
 `npm install`

## Node version
- The client uses an older version of Node, v14, after installing your dependencies, make the following changes to your package.json

` "scripts": {
  "start": "NODE_OPTIONS=--openssl-legacy-provider react-scripts start",
  "build": "NODE_OPTIONS=--openssl-legacy-provider react-scripts build",
  "test": "react-scripts test",
  "eject": "react-scripts eject"
  }, `

## Run the folllowing to start the app
 `npm start`

## Open a new terminal and run the same commands in the backend folder
 `cd ../backend`

 `npm install`

 `npm start`

 ### you can opt to create a .env file to hold your mongo url or opt to have it on server.js, the safest option is to have it on a .env file

 ## Steps to Run with Docker

 ### Go ahead a nd add a product (note that the price field only takes a numeric input)


 # Explanation of Implementation

## 1. Choice of Base Image
The base image chosen for both the frontend and backend is `node:14-alpine`. This is a smaller, lightweight image that contains Node.js and npm. The alpine variant ensures a minimal footprint which helps in keeping the final image size small.

## 2. Dockerfile Directives
- **WORKDIR:** Sets the working directory inside the container.
- **COPY package*.json ./:** Copies package.json and package-lock.json for installing dependencies.
- **RUN npm install:** Installs all the dependencies.
- **COPY . .:** Copies the rest of the application files.
- **EXPOSE:** Specifies the port number on which the container listens.
- **CMD ["npm", "start"]:** Command to start the application.

## 3. Docker-Compose Networking
The application uses a custom bridge network created by Docker Compose. This allows the containers to communicate with each other. Ports are mapped as follows:
- Frontend: 3000:3000
- Backend: 5000:5000
- MongoDB: 27017:27017

## 4. Docker-Compose Volume Definition
A named volume `mongo-data` is created to persist MongoDB data. This ensures that data added via the application is not lost when the containers are restarted.

## 5. Git Workflow
- Forked and cloned the repository.
- Created separate branches for each major change.
- Made descriptive commits for each step.
- Ensured a well-documented README file.
- created the diffrerent dockerfile, on client and backend
- created the images and pushed to my docker account
- updated my readme


