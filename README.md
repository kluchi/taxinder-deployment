# Taxinder deployment

This repository contains deployment scripts and configuration examples for taxinder app

## Configuration

| parameter | default | description |
| --- | --- | --- |
| ROOT_NGINX_PORT | 8080 | Port root nginx container binds to |
| PROXY_BASE_PATH | / | Base path (eg when set to /path, will run under localhost:8080/path) |

For configuration of individual containers see appropriate repositories: [taxinder-api](https://github.com/kluchi/taxinder-api), [taxinder-frontend](https://github.com/kluchi/taxinder-frontend)
