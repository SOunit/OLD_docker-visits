# Specify a base image
FROM node:alpine

# Set working directory
WORKDIR /usr/app

# Install Dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]