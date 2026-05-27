FROM quay.io/keycloak/keycloak:26.0.5

ENV KC_HTTP_ENABLED=true
ENV KC_PROXY_HEADERS=xforwarded
ENV KC_HOSTNAME_STRICT=false

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start-dev", "--http-enabled=true", "--hostname-strict=false", "--http-port=8080"]
