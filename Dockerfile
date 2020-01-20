FROM alpine:latest

RUN apk add --update \
    bash \
    openvpn openvpn-auth-pam \
    iptables \
    mc \
    && rm -rf /var/cache/apk/*

#COPY CONFIG

#IPTABLES MASQUERADE


EXPOSE 1194/udp 1194/tcp

#ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]