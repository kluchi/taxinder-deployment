# syntax=docker/dockerfile:1.3-labs
FROM nginx:alpine

ARG PROXY_BASE_PATH=/

COPY nginx.conf /etc/nginx/nginx.conf

RUN if [[ "${PROXY_BASE_PATH}" = "/" ]] ; \
    then sed -i "s|/taxinder/|/|g" /etc/nginx/nginx.conf ; \
    else sed -i "s|/taxinder/|${PROXY_BASE_PATH}/|g" /etc/nginx/nginx.conf; fi

CMD ["nginx", "-g", "daemon off;"]