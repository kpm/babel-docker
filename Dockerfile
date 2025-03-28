# Use a Node.js base image with Debian slim
FROM node:22-slim

# Set the working directory in the container
WORKDIR /app

# initialise a base packages.json for now.
RUN npm init -y

# Install dependencies
RUN npm install

# Install babel CLI and presets
RUN npm install --save-dev @babel/core @babel/cli @babel/preset-env @babel/preset-react

# Command to run Babel in watch mode, assuming src and static will be mounted.
CMD ["sh", "-c", "npx babel --version && npx babel /app/src --out-dir /app/static --presets @babel/preset-env,@babel/preset-react --watch"]
