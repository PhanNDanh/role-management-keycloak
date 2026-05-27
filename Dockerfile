FROM quay.io/keycloak/keycloak:26.0.5

ENV KC_HTTP_ENABLED=true
ENV KC_PROXY_HEADERS=xforwarded
ENV KC_HOSTNAME_STRICT=false
ENV KC_HEALTH_ENABLED=true

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start-dev", "--http-enabled=true", "--http-port=8080", "--http-host=0.0.0.0", "--hostname-strict=false"]
