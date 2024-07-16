#smaller image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app/backend

# Copy package.json and package-lock.json to the working directory
COPY package*.json /app/backend/

# Install the dependencies
RUN npm install


COPY . .

# Expose the port 
EXPOSE 5000

# Start the application
CMD ["npm", "start"]