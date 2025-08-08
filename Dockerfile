FROM nginx:alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site
COPY . /usr/share/nginx/html

# Expose default Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
