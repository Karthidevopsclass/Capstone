# Use the official Node.js image with a specific version
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port your app runs on (assuming it's the default port used by Create React App)
EXPOSE 3000

# Command to start your application
CMD ["npm", "start"]
