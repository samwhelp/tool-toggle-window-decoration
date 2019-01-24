
## Reference

* https://help.ubuntu.com/community/Devilspie


## Howto

### Install Package: [devilspie](https://packages.ubuntu.com/bionic/devilspie)

run [prepare.sh](prepare.sh) to install [[devilspie](https://packages.ubuntu.com/bionic/devilspie)]

``` sh
$ ./prepare.sh
```

### Config:

run [config.sh](config.sh) to copy [[kmag.ds](kmag.ds)] to [~/.devilspie/kmag.ds]

``` sh
$ ./config.sh
```


## How to test

### Test:

run [test.sh](test.sh)

``` sh
$ ./test.sh
```

then run

``` sh
$ kmag
```

## How to autostart devilspie

run [autostart-config.sh](autostart-config.sh) to copy [[devilspie.desktop](devilspie.desktop)] to [~/.config/autostart/devilspie.desktop]

``` sh
$ ./autostart-config.sh
```

Then relogin or reboot.

It will autostart devilspie.
