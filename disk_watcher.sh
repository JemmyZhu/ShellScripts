#!/bin/bash
#@auther tongze.zhu

# =============== options =================
# config option 1: the folder need be watched
folder="$HOME/Downloads"
# config option 2: files to keep in the folder mentioned above
# REMINDS: 'touch' cmd can avoid file from being deleted, much better than add filename to this list
ignorefiles="andtest.sh backup.sh"


# ===============  main  ==================
diskusage="$(df --si $folder | grep -cE '[89][0-9]\%')"
# if disk usage is safe, do nothing and return 
if [ 0 -eq $diskusage ]; then
    exit 0
fi

echo "$(df --si $folder)"
ignoredates="$(date -d "-2 days") $(date -d yesterday +%Y-%m-%d) $(date +%Y-%m-%d)"
for afile in $(ls -tr $folder | grep avi); do
    isReserved=0
    # ignore any files that need to keep
    for tmp in $ignorefiles; do
        if [ $afile == $tmp ]; then
            isReserved=1
            break
        fi
    done
    # do not delete recent files
    for adate in $ignoredates; do
        if [ 1 -eq $(ls "$folder/$afile" --full-time | grep -c $adate) ]; then
            isReserved=2
            break
        fi
    done
    # check and delete
    if [ $isReserved -eq 0 ]; then
        echo "$folder/$afile will be deleted..."
        #rm "$folder/$afile"
    elif [ $isReserved -eq 2 ]; then
        break
    fi
done


