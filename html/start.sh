#!/bin/bash

# rm nginx.conf

echo "server {
    server_name localhost;
    root /usr/share/nginx/html;

    location /eval {
        proxy_pass $API_URL;
    }
}
" > nginx.conf
