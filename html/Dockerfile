FROM nginx

COPY index.html /usr/share/nginx/html/
COPY static /usr/share/nginx/html/static/

RUN mkdir /etc/nginx/templates
COPY default.conf.template /etc/nginx/templates

EXPOSE 80
