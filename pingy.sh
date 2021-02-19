logfile=$1


if [ -n "$logfile" ]; then
    echo "----------------------\nRestarting pingy at `date`\n" >> "$logfile"
fi

sleep 5

while :; do
    ping -c 1 google.com
    if [[ $? != 0 ]]; then
        osascript -e 'display notification "WiFi is down" with title "Request timeout"'
        if [ -n "$logfile" ]; then
            echo "WiFi down at `date`" >> "$logfile"
        fi
        while :; do
            ping -c 1 google.com
            if [[ $? == 0 ]]; then
                if [ -n "$logfile" ]; then
                    echo "WiFi up at `date`\n" >> "$logfile"
                fi
                osascript -e 'display notification "WiFi is back up" with title "Request successful"'
                break
            fi
            sleep 1
        done
    fi
    sleep 1
done