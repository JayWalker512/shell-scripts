#!/usr/bin/env bash

#power savings settings
/usr/sbin/powertop --auto-tune

#fix trackpad not working while keys pressed
touchpadName="ETPS/2 Elantech Touchpad"
#touchpadId=$(xinput | grep "${touchpadName}" | awk '{print $6}' | cut -c4-9)
prop1=$(xinput --list-props "ETPS/2 Elantech Touchpad" | grep "Disable While Typing Enabled (" | awk '{print $6}' | cut -c2-4)
#prop2=$(xinput --list-props "ETPS/2 Elantech Touchpad" | grep "Disable While Typing Enabled Default (" | awk '{print $7}' | cut -c2-4)
xinput --set-prop "${touchpadName}" "${prop1}" 0
#xinput --set-prop "${touchpadName}" "${prop2}" 0
