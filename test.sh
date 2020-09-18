# #!/bin/bash
 

#      declare -a vpn_servers;
#         vpn_servers="c1.serverkm.xyz:443"
#     #  vpn_servers=(c1.serverkm.xyz:443 c2.serverkm.xyz:443 c3.serverkm.xyz:443 c4.serverkm.xyz:443 c5.serverkm.xyz:443 c6.serverkm.xyz:443 c7.serverkm.xyz:443 c8.serverkm.xyz:443 c9.serverkm.xyz:443 c10.serverkm.xyz:443 c11.serverkm.xyz:443 )
#       user_name="km1622956"
#      echo "kk"
#       user_password="35724"
#      for item in ${vpn_servers[@]}; do
#         retry_time=$(($(date +%s) + 30))
#         echo $item;
#         sudo openconnect -u $vpn_username $item 
        
#         current_time=`date +%s`;
#         if [ $current_time -lt retry_time ]; then
#             sleep $(( $retry_time - $current_time ))
#         fi
#      done     


# sudo openconnect -u km1622956 c1.serverkm.xyz:443 --non-inter --passwd-on-stdin <<< 35724
sudo openconnect -u km1622956 c1.serverkm.xyz:443 --passwd-on-stdin <<< 35724