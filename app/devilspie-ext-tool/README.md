
## Reference

* /usr/share/doc/devilspie/README
* $ man [devilspie](http://manpages.ubuntu.com/manpages/bionic/en/man1/devilspie.1.html)
* https://github.com/GNOME/devilspie/blob/master/src/e-sexp.c
* https://askubuntu.com/questions/436891/create-a-desktop-file-that-opens-and-execute-a-command-in-a-terminal

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
/usr/local/share/devilspie-ext-tool/devilspie-win-info.sh
/usr/local/share/devilspie-ext-tool/devilspie-win-info.ds
/usr/local/bin/devilspie-win-info
```

## How to test

### list window info

run

``` sh
$ devilspie-win-info
```

### grep window info

#### example: gnome-terminal

run

``` sh
$ devilspie-win-info | grep '^application_name: Terminal' -A 5
```

show

```
application_name: Terminal
window_name: Terminal
window_class: Gnome-terminal
window_xid: 60817896
window_role: gnome-terminal-window-2e7dac2f-025a-4842-8dfc-6d6e25a619df
window_workspace: 1
--
application_name: Terminal
window_name: Terminal
window_class: Gnome-terminal
window_xid: 60817418
window_role: gnome-terminal-window-c902ad02-e16c-41f9-8699-4860bd076ea0
window_workspace: 1
```

#### example: kmag

run

``` sh
$ devilspie-win-info | grep '^window_class: kmag' -A 3 -B 2
```

show

```
application_name: KMagnifier
window_name: KMagnifier
window_class: kmag
window_xid: 77594629
window_role: MainWindow#1
window_workspace: 1
--
application_name: KMagnifier
window_name: KMagnifier
window_class: kmag
window_xid: 75497477
window_role: MainWindow#1
window_workspace: 1
```

#### example: xzoom

run

``` sh
$ devilspie-win-info | grep '^window_name: xzoom' -A 3 -B 2
```

show

```
application_name: xzoom x2
window_name: xzoom x2
window_class:
window_xid: 75497473
window_role:
--
application_name: xzoom x3
window_name: xzoom x3
window_class:
window_xid: 77594625
window_role:
```

#### example: grep gnome-terminal window id

run

``` sh
$ devilspie-win-info | grep '^application_name: Terminal' -A 5 | grep '^window_xid:' | awk -F ': ' '{print $2}'
```

show

```
60817896
60817418
```
