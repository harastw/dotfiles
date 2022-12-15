D=$(date  +%Y-%m-%d)
T=$(date +%H:%M:%S)
V=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))

TOTAL_RAM=$(free -mh --si | awk  {'print $2'} | head -n 2 | tail -1)
USED_RAM=$(free -mh --si | awk  {'print $3'} | head -n 2 | tail -1)

cpu_last=($(head -n1 /proc/stat))
cpu_last_sum="${cpu_last[@]:1}"
cpu_last_sum=$((${cpu_last_sum// /+}))

sleep 0.05

cpu_now=($(head -n1 /proc/stat))
cpu_sum="${cpu_now[@]:1}"
cpu_sum=$((${cpu_sum// /+}))

cpu_delta=$((cpu_sum - cpu_last_sum))
cpu_idle=$((cpu_now[4]- cpu_last[4]))
cpu_used=$((cpu_delta - cpu_idle))
cpu_usage=$((100 * cpu_used / cpu_delta))

# Keep this as last for our next read
cpu_last=("${cpu_now[@]}")
cpu_last_sum=$cpu_sum


CPU_TEMP="$(sensors | grep temp1 | awk 'NR==1{gsub("+", " "); gsub("\\..", " "); print $2}')"

disk="$(df -h --output="used,avail" / | perl -ne 'if($_ =~ m/\d/) { s/\s+/ /g;s/^\s//g;s/\s$//g;s/\s/\//; print $_}')"

if [ "$CPU_TEMP" -ge $WARNING_LEVEL ]; then
    PREFIX="$FIRE$PREFIX"
fi

echo  "[$D $T] [vol: $V] [mem: $USED_RAM/$TOTAL_RAM] [cpu use: $cpu_usage%] [cpu temp: $CPU_TEMP°C] [$disk]"
