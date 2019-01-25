
## Reference

* /usr/share/doc/devilspie/README
* $ man [devilspie](http://manpages.ubuntu.com/manpages/bionic/en/man1/devilspie.1.html)
* https://github.com/GNOME/devilspie/blob/master/src/e-sexp.c

## How to install

run

``` sh
$ make install
```

or

``` sh
$ ./install.sh
```

install file list

```
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-undecorate.sh
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-decorate.sh
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-decorate.ds
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-undecorate.ds
/usr/local/bin/xzoom-decorate.sh
/usr/local/bin/xzoom-undecorate.sh
~/Desktop/xzoom-decorate.desktop
~/Desktop/xzoom-undecorate.desktop
~/.local/share/applications/xzoom-decorate.desktop
~/.local/share/applications/xzoom-undecorate.desktop
```


## How to remove

run

``` sh
$ make remove
```

or

``` sh
$ ./remove.sh
```


## How to test

### decorate

run

``` sh
$ xzoom-decorate.sh
```

### undecorate

run

``` sh
$ xzoom-undecorate.sh
```
