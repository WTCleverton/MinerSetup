#Detect and generate a list of kernel modules for monitoring temperatures, voltage, and fans.

#The programm 'sensors-detect' will ask to probe for various hardware.

#The safe answers are the defaults, so just hitting [Enter] to all the questions will generally not cause any problems.

sudo sensors-detect

#Generate an xorg.conf with faked monitors (for each of your cards).

#You need to run this everytime you add or remove cards.


sudo nvidia-xconfig -a --allow-empty-initial-configuration --cool-bits=31 --use-display-device="DFP-0" --connected-monitor="DFP-0"


#
# Check if graphic card is crashed and reboot
#
# prospector@mine:~ $ crontab -e
# @hourly bash ~/check_nvidia_crash.sh >/dev/null 2>&1
#

if cat "/var/log/syslog" | grep "NVRM: A GPU crash dump has been created. If possible, please run"; then
	sudo reboot
fi
