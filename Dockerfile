# Use a Node.js base image with Debian slim
FROM node:22-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application source code
COPY src ./src

# Install babel CLI and presets
RUN npm install --save-dev @babel/core @babel/cli @babel/preset-env @babel/preset-react

# Create the destination directory
RUN mkdir -p /app/static

# Command to run Babel in watch mode
CMD ["npx", "babel", "src", "--out-dir", "static", "--presets", "@babel/preset-env,@babel/preset-react", "--watch"]
