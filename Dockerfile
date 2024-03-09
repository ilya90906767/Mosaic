# Use the official NGINX base image
FROM nginx:latest

COPY . /usr/share/nginx/html

RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf
# Expose port 80 (HTTP)
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
