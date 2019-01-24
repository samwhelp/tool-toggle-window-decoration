
## Reference

* https://help.ubuntu.com/community/Devilspie


## Howto

### Install Package: [devilspie](https://packages.ubuntu.com/bionic/devilspie)

run [prepare.sh](prepare.sh) to install [[devilspie](https://packages.ubuntu.com/bionic/devilspie)]

``` sh
$ ./prepare.sh
```

### Config:

run [config.sh](config.sh) to copy [[xzoom.ds](xzoom.ds)] to [~/.devilspie/xzoom.ds]

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
$ xzoom
```

or run

``` sh
$ xzoom -mag 2
```

or run

``` sh
$ xzoom -mag 3
```

or run

``` sh
$ xzoom -mag 4
```

or run

``` sh
$ xzoom -mag 5
```

or run

``` sh
$ xzoom -mag 10
```

## How to autostart devilspie

run [autostart-config.sh](autostart-config.sh) to copy [[devilspie.desktop](devilspie.desktop)] to [~/.config/autostart/devilspie.desktop]

``` sh
$ ./autostart-config.sh
```

Then relogin or reboot.

It will autostart devilspie.
