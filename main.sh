while :; do
    ping -c 1 google.com
    if [[ $? != 0 ]]; then
        osascript -e 'display notification "WiFi is down" with title "Request timeout"'
        while :; do
            ping -c 1 google.com
            if [[ $? == 0 ]]; then
                osascript -e 'display notification "WiFi is back up" with title "Request successful"'
                break
            fi
            sleep 1
        done
    fi
    sleep 1
done