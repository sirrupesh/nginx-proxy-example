# Use Node.js official image as base
FROM node:latest

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port 3000 as mentioned in index.js
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]