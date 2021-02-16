while :; do
    ping -c 1 google.com
    if [[ $? != 0 ]]; then
        osascript -e 'display notification "WiFi is down" with title "Request timout"'
        sleep 120
    fi
    sleep 1
done