FROM nginx:alpine

# Clean default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website into nginx
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

