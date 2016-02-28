i3status | while :
do
    read line
    net=`bash ~/.i3/net_upload_downloads.sh`
    echo "$net | $line" || exit 1
done
