#smaller image of node
FROM node:14-apline

#working directory
WORKDIR /app/client

#copy packages
COPY package*.json /app/client/

#install dependencies
RUN npm install

#copy the rest of the application
COPY . .

# Expose the port 
EXPOSE 3000

# Start the application
CMD ["npm", "start"]