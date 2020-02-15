# REMChain-Remote-Snapshot

#### This script will restore the chain by using a remote snapshot from Geordie-R.

***

### Setup Remote-Snapshot:

```
sudo wget https://github.com/remblock/REMChain-Remote-Snapshots/raw/master/setup-remote-snapshot && sudo chmod u+x setup-remote-snapshot && sudo ./setup-remote-snapshot
```

### Now we need activate the restore-remote-snapshot

```
cd data
cd snapshots
sudo ./restore-remote-snapshot
```

### Once everything has synced use Ctrl + C to cancel out but please fire it up right away using the code below
```
remnode --config-dir ./config/ --data-dir ./data/ >> remnode.log 2>&1 &
```
### Now when you press Ctrl + C, it will run successfully in the background this time.
