#!/system/bin/sh
setprop gsm.radio.kickstart off

if [ $(getprop ro.boot.baseband) == "mdm" ]; then

    for f in $(ls /data/qcks/); do
        (ls -l /data/qcks/$f | grep root) && rm /data/qcks/$f;
    done

    setprop gsm.radio.kickstart on
fi
