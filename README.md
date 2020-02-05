# remchain-snapshot
This code takes the snapshots on my node to send them to my webserver vps through ssh

# takesnapshot.sh
This file takes the snapshot, compresses it and sends it to the VPS. This is for my own benefit or for anyone else that would like to take a snapshot (must have the producer API enabled).

To install the takesnapshot.sh do the following
```
mkdir -p /root/data/snapshots/
cd /root/data/snapshots/
sudo wget https://raw.githubusercontent.com/Geordie-R/remchain-snapshot/master/takesnapshot.sh && sudo +x takesnapshot.sh
```

Now we can add this to crontab manually for now and choose to run it every 24hours etc





