while :; do
    ping -c 1 google.com
    if [[ $? != 0 ]]; then
        osascript -e 'display notification "WIFI IS DOWN!"'
        sleep 60
    fi
    sleep 1
done