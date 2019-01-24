
## Reference

* http://www.nongnu.org/devilspie2/
* http://git.savannah.gnu.org/cgit/devilspie2.git
* http://git.savannah.gnu.org/cgit/devilspie2.git/plain/README
* https://www.justingedge.com/linux/devilspie2-automatic-window-placement/


## Howto

### Install Package: [devilspie2](https://packages.ubuntu.com/bionic/devilspie2)

run [prepare.sh](prepare.sh) to install [[devilspie2](https://packages.ubuntu.com/bionic/devilspie2)]

``` sh
$ ./prepare.sh
```

### Config:

run [config.sh](config.sh) to copy [[xzoom.lua](xzoom.lua)] to [~/.config/devilspie2/xzoom.lua]

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

run [autostart-config.sh](autostart-config.sh) to copy [[devilspie2.desktop](devilspie2.desktop)] to [~/.config/autostart/devilspie2.desktop]

``` sh
$ ./autostart-config.sh
```

Then relogin or reboot.

It will autostart devilspie.

## Debug Info

### use devilspie2

xzoom -mag 2

```
get_window_name:                      xzoom x2
get_application_name:                 xzoom x2
get_window_geometry:                  707
get_window_client_geometry:           712
get_window_type:                      WINDOW_TYPE_NORMAL
get_window_role:                      
get_window_xid:                       77594625
get_window_class:                     
get_workspace_count:                  4
```

xzoom -mag 3

```
get_window_name:                      xzoom x3
get_application_name:                 xzoom x3
get_window_geometry:                  707
get_window_client_geometry:           712
get_window_type:                      WINDOW_TYPE_NORMAL
get_window_role:                      
get_window_xid:                       77594625
get_window_class:                     
get_workspace_count:                  4

```

Unknown Exception

```
get_window_name:                      Untitled window
get_application_name:                 Untitled window
get_window_geometry:                  707
get_window_client_geometry:           712
get_window_type:                      WINDOW_TYPE_NORMAL
get_window_role:                      
get_window_xid:                       77594625
get_window_class:                     
get_workspace_count:                  4
```

### use devilspie2

run

``` sh
$ wmctrl -lx | grep xzoom
```

show

```
0x04a00001  0 N/A                    N/A xzoom x3
```
