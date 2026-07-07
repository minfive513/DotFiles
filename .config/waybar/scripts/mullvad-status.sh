#!/usr/bin/env bash

if mullvad status | grep -q "Connected"; then
    echo '{"text":"󰦝","class":"connected","tooltip":"Mullvad VPN verbunden"}'
else
    echo '{"text":"󰦝","class":"disconnected","tooltip":"Mullvad VPN getrennt"}'
fi
