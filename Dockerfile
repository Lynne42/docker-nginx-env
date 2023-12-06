FROM nginx:1.25.3
WORKDIR /usr/local/nginx

COPY /app /usr/share/nginx/html
COPY /nginx.template /etc/nginx/templates


EXPOSE 8080

CMD /bin/bash -c "envsubst '\$YISUO_API_PASS' < /etc/nginx/templates/yisuo.conf.template > /etc/nginx/conf.d/yisuo.conf && nginx -g 'daemon off;'"






