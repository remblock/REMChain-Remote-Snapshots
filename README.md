# REMChain-Remote-Snapshot

#### This script will restore and resync your chain by using the latest snapshot from Geordie-R (geordierembp).

***

### Setup Remote-Snapshot:

```
sudo wget https://github.com/remblock/REMChain-Remote-Snapshots/raw/master/setup-remote-snapshot && sudo chmod u+x setup-remote-snapshot && sudo ./setup-remote-snapshot
```

#### Now we need activate the restore-remote-snapshot:

```
cd data
cd snapshots
sudo ./restore-remote-snapshot
```

#### Once everything is synced press Ctrl + C to cancel out, then fire up REMNODE right away using the code below:
```
remnode --config-dir ./config/ --data-dir ./data/ >> remnode.log 2>&1 &
```
