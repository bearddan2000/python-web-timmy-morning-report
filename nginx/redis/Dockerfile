FROM nginx

# Override the default nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf
COPY bin/nginx.conf /etc/nginx/nginx.conf