#!/bin/bash


myvpn () {
    local vpn_server="vpnserver"
    local vpn_username="user"
    local vpn_password="password"
    # try connect
    while true; do
        retry_time=$(($(date +%s) + 30))
        sudo openconnect \
            -u $vpn_username $vpn_server --non-inter --passwd-on-stdin <<< 
"$vpn_password"
        current_time=`date +%s`
        if [ $current_time -lt retry_time ]; then
            sleep $(( $retry_time - $current_time ))
        fi
    done
}
