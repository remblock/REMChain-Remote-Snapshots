#!/bin/bash
datename=$(date +%Y-%m-%d)
shcreate=compressandsendlastsnapshot.sh
cd ~
compressedfolder=/root/data/snapshots/compressed/
filename="$compressedfolder$datename.tar.gz"
mkdir -p $compressedfolder
snapname=$(curl http://127.0.0.1:8888/v1/producer/create_snapshot | jq '.snapshot_name')


rm -f $shcreate
touch $shcreate && chmod +x $shcreate
echo "tar -cvzf $filename $snapname" >> $shcreate
echo "rsync -rv -e 'ssh -p 466' --progress $filename root@website.geordier.co.uk:/var/www/geordier.co.uk/snapshots" >> $shcreate
./$shcreate
