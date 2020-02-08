# remchain-snapshot
This code TAKES the snapshots on my node to send them to my webserver vps through ssh. If you want to restore please keep scrolling further down

# takesnapshot.sh
This file takes the snapshot, compresses it and sends it to the VPS. This is for my own benefit or for anyone else that would like to take a snapshot (must have the producer API enabled).

To install the takesnapshot.sh do the following
```
mkdir -p /root/data/snapshots/
cd /root/data/snapshots/
sudo wget https://raw.githubusercontent.com/Geordie-R/remchain-snapshot/master/takesnapshot.sh && sudo chmod +x takesnapshot.sh
```

Now we can add this to crontab manually for now and choose to run it every 24hours etc
```
crontab -e
```

Now add the following line to run it at every 3am
```
0 3 * * * /root/data/snapshots/takesnapshot.sh
```

# restoresnapshot.sh

This will download the restoresnapshot.sh to your snapshot folder

```
mkdir -p /root/data/snapshots/
cd /root/data/snapshots/
sudo wget https://raw.githubusercontent.com/Geordie-R/remchain-snapshot/master/restoresnapshot.sh && sudo chmod +x restoresnapshot.sh
```
# Just get me up and running fast already!
The code below is identical to the code above but it actually runs it immediately afterwards.

```
mkdir -p /root/data/snapshots/
cd /root/data/snapshots/
sudo wget https://raw.githubusercontent.com/Geordie-R/remchain-snapshot/master/restoresnapshot.sh && sudo chmod +x restoresnapshot.sh && ./restoresnapshot.sh
```





