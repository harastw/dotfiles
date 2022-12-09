D=$(date  +%Y-%m-%d)
T=$(date +%H:%M:%S)
V=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))
echo  "[" "$D" "$T" "] [" "$V" "]"
