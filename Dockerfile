# Fetching the latest node image on alpine linux
FROM node:alpine AS development

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /docker-react

# Installing dependencies
COPY ./package*.json /docker-react

RUN npm install

# Copying all the files in our project
COPY . .

# Expose the port for Vite development server
EXPOSE 5173

# Start the Vite development server
CMD ["npm", "run", "dev", "--", "--host"]