FROM nginx:alpine

COPY . /usr/share/nginx/html

COPY ./.nginx/nginx.conf /etc/nginx

COPY ./.nginx/default.conf /etc/nginx/conf.d

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
