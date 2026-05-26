FROM quay.io/keycloak/keycloak:26.0.5

ENV KC_HTTP_ENABLED=true
ENV KC_PROXY_HEADERS=xforwarded

EXPOSE 8080

CMD ["start-dev", "--http-port=8080"]
