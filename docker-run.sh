#!/bin/bash

OVPN_DATA="/data/ovpn"

docker run \
        -v $OVPN_DATA:/etc/openvpn/data \
        -itd \
        --restart unless-stopped \
        --network host \
        --name ovpn alpine-ovpn
