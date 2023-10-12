# Use an official Node.js runtime as a parent image
FROM node:18.12.1

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the React app
RUN npm run build

# Serve the app on port 80
EXPOSE 80

# Start the app
CMD ["npm", "start"]
