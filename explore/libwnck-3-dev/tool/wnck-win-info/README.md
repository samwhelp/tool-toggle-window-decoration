
## Install Package

run

``` sh
$ sudo apt-get install build-essential libgtk-3-dev libwnck-3-dev meson
```


## How to build

run

``` sh
$ meson build
```

then run

``` sh
$ ninja -C build
```

or run

``` sh
cd build
ninja
```

## How to test

### list window info

run

``` sh
$ ./wnck-win-info
```

### grep window info

#### example: gnome-terminal

run

``` sh
$ ./wnck-win-info | grep '^application_name: Terminal' -A 3
```

show

```
application_name: Terminal
window_name: Terminal
window_class: Gnome-terminal
window_xid: 86166045
--
application_name: Terminal
window_name: Terminal
window_class: Gnome-terminal
window_xid: 86025324
```

## Reference

* https://github.com/GNOME/devilspie/
