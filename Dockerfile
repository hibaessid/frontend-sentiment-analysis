# Use a lightweight NGINX image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML and static files into the NGINX directory
COPY . .

# Expose the default NGINX port
EXPOSE 80

# Command to start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
