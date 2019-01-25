
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

## How to remove

run

``` sh
$ make remove
```

or

``` sh
$ ./remove.sh
```

install file list

```
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-undecorate.sh
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-decorate.sh
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-decorate.ds
/usr/local/share/devilspie-xzoom-toggle-window-decoration/xzoom-undecorate.ds
/usr/local/bin/kmag-decorate.sh
/usr/local/bin/kmag-undecorate.sh
~/Desktop/kmag-decorate.desktop
~/Desktop/kmag-undecorate.desktop
~/.local/share/applications/kmag-decorate.desktop
~/.local/share/applications/kmag-undecorate.desktop
```

## How to test

### decorate

run

``` sh
$ kmag-decorate.sh
```

### undecorate

run

``` sh
$ kmag-undecorate.sh
```
