#!/bin/sh
envsubst < /etc/nginx/default.conf.tmpl > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
