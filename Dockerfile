# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy application source code
COPY . .

# Build the React app
RUN npm run build

# Use serve to serve the production build
RUN npm install -g serve

# Start the application
CMD ["serve", "-s", "build"]

# Expose the port serve runs on
EXPOSE 3000

