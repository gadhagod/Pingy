Be notified when your wifi goes down. Macs only.

Simply run `nohup sh main.sh &`. If your wifi goes down, you'll be notified! When it gets back up, you will be notified again.

You can log times when your internet went down and came back up by passing an argument of the target log file. For example, you could run `sh main.sh ./log.out`. The following is an example log file:

    WiFi down at Wed Feb 17 13:33:36 PST 2021
    Wifi up at Wed Feb 17 13:33:50 PST 2021

    Wifi down at Wed Feb 17 13:34:16 PST 2021
    Wifi up at Wed Feb 17 13:34:27 PST 2021