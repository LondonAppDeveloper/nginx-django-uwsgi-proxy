FROM nginx:1.15-alpine

COPY default.conf.tmpl /etc/nginx/default.conf.tmpl
ADD https://raw.githubusercontent.com/nginx/nginx/master/conf/uwsgi_params /etc/nginx/uwsgi_params

ENV LISTEN_PORT=8000
ENV APP_HOST=app
ENV APP_PORT=8000

RUN mkdir -p /vol/static
RUN adduser -D user
RUN chmod 755 /vol/static
RUN chown -R user:user /vol/static

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
