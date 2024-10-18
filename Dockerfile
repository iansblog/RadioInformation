# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the static files to the Nginx HTML directory
COPY . /usr/share/nginx/html
