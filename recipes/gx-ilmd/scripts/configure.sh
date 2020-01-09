#!/bin/bash

systemctl unmask hostapd
systemctl enable hostapd
systemctl enable ilmd

systemctl disable apt-daily.service
systemctl disable apt-daily.timer

systemctl disable apt-daily-upgrade.timer
systemctl disable apt-daily-upgrade.service
