#!/bin/bash
sed -i /etc/default/keyboard -e "s/^XKBMODEL.*/XKBMODEL=\"$1\"/"
sed -i /etc/default/keyboard -e "s/^XKBLAYOUT.*/XKBLAYOUT=\"$2\"/"
dpkg-reconfigure -f noninteractive keyboard-configuration
invoke-rc.d keyboard-setup start
