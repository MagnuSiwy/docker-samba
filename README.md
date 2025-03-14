## A simple docker container for samba

To be able to use samba with this config, you should run it with this command:

```
docker run -d --name <container_name> -p 445:445 -e "USER=<username>" -e "PASS=<password>" -v "<shared_dir>:/shared" <image_name>
```

Where:
  - <container_name> - the name of your container, so anything you want
  - \<username> - name of the user you want to create in the container and for samba authentication
  - \<password> - password of the user you want to create in the container and for samba authentication
  - <shared_dir> - the directory you want to share on your device
  - <image_name> - the name of the image

There are two more files in the repo. The `smb.conf` is the samba config file. You can change the share's name there. `samba.sh` is a simple bash file that creates a user in the container and then creates a user for samba. Whatever you pass in the _USER_ ans _PASS_ arguments in the run command will be applied.

With the default config the share is named **drive**:

```
//<device_ip>/drive
```
