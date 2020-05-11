timestamp() {date +%Y-%m-%d_%H-%M-%S}
datetime=$(date +%Y-%m-%d_%H-%M-%S)
#sleep 3m
SSID=$(sudo iwgetid) #needs to be sudo to pull response
IP=$(hostname -I)
temp=$(/opt/vc/bin/vcgencmd measure_temp)

echo "$datetime - RESTART - IP:$IP - WIFI:$SSID - CPU_TEMP:$temp"
echo "$datetime - RESTART - IP:$IP - WIFI:$SSID - CPU_TEMP:$temp" >> /home/pi/RPIpack/logs/restart_log

crontab -l > /home/pi/RPIpack/cronbackup/crontab_$datetime