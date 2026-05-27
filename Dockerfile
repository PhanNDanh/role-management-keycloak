FROM quay.io/keycloak/keycloak:26.0.5

ENV KC_HTTP_ENABLED=true
ENV KC_PROXY_HEADERS=xforwarded
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

EXPOSE 8080

CMD ["start-dev", "--http-host=0.0.0.0", "--http-port=8080"]
