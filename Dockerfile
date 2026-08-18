FROM nginx:stable-alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy static files
COPY . /usr/share/nginx/html

# Update nginx to listen on 4000 instead of 80
RUN sed -i 's/listen       80;/listen 4000;/g' /etc/nginx/conf.d/default.conf

EXPOSE 4000

CMD ["nginx", "-g", "daemon off;"]
