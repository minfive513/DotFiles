#!/bin/bash
#Allow VM to use the vpn connection
$(mullvad lan set allow)
mullvadStatus="$(mullvad status -v)"

notify-send "$mullvadStatus" --icon=network-vpn -u low
