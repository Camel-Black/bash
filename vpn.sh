#!/bin/sh

vpn(){
    vpn_servers=(c1.serverkm.xyz:443 c2.serverkm.xyz:443 c3.serverkm.xyz:443 c4.serverkm.xyz:443 c5.serverkm.xyz:443 c6.serverkm.xyz:443 c7.serverkm.xyz:443 c8.serverkm.xyz:443 c9.serverkm.xyz:443 c10.serverkm.xyz:443 c11.serverkm.xyz:443 )
    user_name="km1622956"
    echo "kk"
    user_password="35724"
    for item in "${vpn_servers[@]}"; do
        echo ""
        echo "----------------------------"
        echo "connecting to $item ..."
        echo "please wait ..."
        echo ""
        retry_time=$(($(date +%s) + 30))
        echo 35724 | sudo openconnect $item --user=km1622956 --passwd-on-stdin
        
        
        current_time=`date +%s`;
        if [ $current_time -lt retry_time ]; then
            sleep $(( $retry_time - $current_time ))
        fi
    done
}
vpn
