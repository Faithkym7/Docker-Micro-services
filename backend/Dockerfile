# Use a smaller image of node
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app/backend

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
