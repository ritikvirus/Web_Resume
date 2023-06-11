# Use Ubuntu as the base image
FROM ubuntu:latest

# Update packages and install Nginx
RUN apt-get update && apt-get install -y nginx

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the local files to the working directory
COPY . .

# Expose port 80 for the container
EXPOSE 80

# Start Nginx server when the container launches
CMD ["nginx", "-g", "daemon off;"]
