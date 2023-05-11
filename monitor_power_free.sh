#!/bin/bash

# using this script to monitor if router/AP 
# is sending ssid
# router is not on generator circuit so is off when
# power is lost and comes back on when line power is back on


# Set host/appliance IP and credentials
kodi_ip="x.x.x.x"
kodi_username="username"
kodi_password="password"
counter=0
# Loop as long as there is no WIFI

while true; do
    # Get wifi status
    wifi_status=$(sshpass -p $kodi_password ssh -o StrictHostKeyChecking=no $kodi_username@$kodi_ip "connmanctl services" | grep "ssid" | awk '{print $1}')

    # Check status and print result
    if [ "$wifi_status" = "ssid" ]; then
        echo "Wifi is up, power is up"
        # if using WSL on Windows
        # /mnt/c/Users/vasileas/Downloads/wsl-notify-send_windows_amd64/wsl-notify-send.exe "Power is UP again! Turn off Generator"
        
        #for linux use
        notify-send "Power is UP again! Turn off Generator"
        
        sleep  120
        if [[ "$counter" -gt 3 ]]; then
                # if using WSL on Windows
                # /mnt/c/Users/vasileas/Downloads/wsl-notify-send_windows_amd64/wsl-notify-send.exe "Last Notification! Power is up!"
				
				# for linux
				notify-send "Last Notification! Power is up!"
                exit 1
        fi
        echo counter: $counter
        ((counter++))
    else
        echo "Power is still down, sleeping for 1 minutes..."
                sleep 60
    fi
done







