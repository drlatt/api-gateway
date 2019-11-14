FROM nginx

COPY nginx.conf api_backends.conf api_gateway.conf api_json_errors.conf api_keys.conf /etc/nginx/
RUN mkdir -p /etc/nginx/api_conf.d/

COPY warehouse_api.conf /etc/nginx/api_conf.d/
