# production stage
FROM nginx:stable-alpine 
COPY . .
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY .htaccess /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]