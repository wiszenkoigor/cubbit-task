# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY . ./

# Install Node.js dependencies
RUN npm install

# Expose the desired port (e.g., 3000)
EXPOSE 3000

# Copy the application code to the container
COPY . .

# Start the Node.js application
CMD ["npm", "start"]
