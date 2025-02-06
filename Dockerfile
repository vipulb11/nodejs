# Use the official Node.js image as a base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application files (server.js, public folder, etc.) to the container
COPY . .

# Expose the port that the app will run on (the same port as in the server.js file)
EXPOSE 3004

# Command to run the app when the container starts
CMD ["node", "server.js"]

