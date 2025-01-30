# Use an official Node.js runtime as a base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port used by Next.js (default 3000)
EXPOSE 3000

# Start the Next.js application in development mode
CMD ["npm", "run", "dev"]
