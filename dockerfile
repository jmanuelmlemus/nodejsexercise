# Use node.js image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

#Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the app code
COPY . .

#expose the app port
EXPOSE 3000

#Start the application
CMD ["npm", "start"]