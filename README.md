**Sample API gateway config using nginx and sample API to test**

- Clone repository
- Run `make up` to start up services.
- Run `make down` to stop and remove services and associated resources
- For other commands, run `make help` for guidance

**Nginx file config structure**
```
etc/
└── nginx/
    ├── api_conf.d/ ………………………………… Subdirectory for per-API configuration
    │   └── warehouse_api.conf …… Definition and policy of the Warehouse API
    ├── api_backends.conf ………………… The backend services (upstreams)
    ├── api_gateway.conf …………………… Top-level configuration for the API gateway server
    ├── api_json_errors.conf ………… HTTP error responses in JSON format
    ├── conf.d/
    │   ├── ...
    │   └── existing_apps.conf
    └── nginx.conf
```
```
Test protected API
## curl -H "apikey: d2hvYW1pdGhlYmVzdHJhcHBlcg==" localhost/api/warehouse/hello
{"message":"hello dude"}
```
API gateway reference - https://www.nginx.com/blog/deploying-nginx-plus-as-an-api-gateway-part-1/
