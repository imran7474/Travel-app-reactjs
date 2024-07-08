# Use the official Node.js image with the specified version
FROM node:10.19.0

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available) files to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Build the React application
RUN npm run build

# Command to run the application
CMD ["npm", "start"]
