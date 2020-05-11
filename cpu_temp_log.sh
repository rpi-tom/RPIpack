datetime=$(date +%Y-%m-%d_%H-%M-%S)
temp=$(/opt/vc/bin/vcgencmd measure_temp)

echo "$datetime,$temp,${temp:5:-2}"
echo "$datetime,$temp,${temp:5:-2}" >> /home/pi/RPIpack/logs/cpu_temp_log