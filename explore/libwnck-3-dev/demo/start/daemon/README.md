
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

run

``` sh
$ ./demo
```


## Reference

* https://github.com/GNOME/devilspie/
