# Dockerfile
FROM node:20.11.0

# Create app directory
WORKDIR /usr/src/app/host-app/

RUN ["npm", "install", "-g", "npm@10.8.3"]

# Copy package.json package-lock.json
COPY ./host-app/package*.json .

RUN ["npm", "install"]
