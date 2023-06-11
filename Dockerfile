# Use a specific version of the Nginx base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the local files to the working directory
COPY . .

# Expose port 80 for the container
EXPOSE 80

# Start Nginx server when the container launches
CMD ["nginx", "-g", "daemon off;"]
