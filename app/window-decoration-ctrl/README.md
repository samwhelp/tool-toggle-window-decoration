

## Reference

* https://unix.stackexchange.com/questions/103356/remove-title-bar-of-another-program
* https://gist.github.com/muktupavels/d03bb14ea6042b779df89b4c87df975d
* https://github.com/sunwxg/gnome-shell-extension-undecorate/blob/master/undecorate%40sun.wxg%40gmail.com/extension.js
* https://askubuntu.com/questions/928226/xprop-fails-to-undecorate-window


## Forum

* https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=361020#forumpost361020
* https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=360652#forumpost360652


## How to build

### Install Package: [libx11-dev](https://packages.ubuntu.com/bionic/libx11-dev)

run [prepare.sh](prepare.sh)

``` sh
$ ./prepare.sh
```

### Build

run [build.sh](build.sh)

``` sh
$ ./build.sh
```


## How to test

### toggle

run [test-toggle.sh](test-toggle.sh)

``` sh
$ ./test-toggle.sh
```

### decorate

run [test-decorate.sh](test-decorate.sh)

``` sh
$ ./test-decorate.sh
```

show

```
_MOTIF_WM_HINTS(_MOTIF_WM_HINTS) = 0x2, 0x0, 0x1, 0x0, 0x0
```

### undecorate

run [test-undecorate.sh](test-undecorate.sh)

``` sh
$ ./test-undecorate.sh
```

show

```
_MOTIF_WM_HINTS(_MOTIF_WM_HINTS) = 0x2, 0x0, 0x0, 0x0, 0x0
```


## How to install

### install

run [install.sh](install.sh)

``` sh
$ ./install.sh
```

### remove

run [remove.sh](remove.sh)

``` sh
$ ./remove.sh
```
