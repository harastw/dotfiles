# # pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
# pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'

getdefaultsinkname() {
    pacmd stat | awk -F": " '/^Default sink name: /{print $2}'
}

getdefaultsinkvol() {
    pacmd list-sinks |
        awk '/^\s+name: /{indefault = $2 == "<'$(getdefaultsinkname)'>"}
            /^\s+volume: / && indefault {print $5; exit}'

}

getdefaultsinkvol
