FROM nginx:alpine

# Copy site files into nginx's default web root
COPY . /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Railway uses PORT env var
EXPOSE 8080
