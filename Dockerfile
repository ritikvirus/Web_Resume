# Use Alpine Linux as the base image
FROM alpine:latest

# Update packages and install Nginx
RUN apk update && apk add nginx

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the local files to the working directory
COPY . .

# Expose port 80 for the container
EXPOSE 80

# Start Nginx server when the container launches
CMD ["nginx", "-g", "daemon off;"]
