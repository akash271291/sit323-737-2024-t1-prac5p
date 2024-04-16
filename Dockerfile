
# Use Node.js runtime as the base image
FROM node:16

# set the working directory
WORKDIR /usr/src/app

# Copy package.json to the container
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy the application code
COPY index.js .

#Expose port
EXPOSE 3000

# command to run when the container starts
CMD ["node", "index.js"]


