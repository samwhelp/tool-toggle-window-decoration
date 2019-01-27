
# wnckprop / example-window


## find window info by xid

``` sh
$ wnckprop --list | grep 'xzoom'
```

show

```
104857601: xzoom x3
102760449: xzoom x2
```

``` sh
$ wnckprop --window=102760449
```

show

```
Name: xzoom x2
Icon Name: xzoom
Icons: <unset>
On Workspace: 1 ("Workspace 2")
On Screen: 0 (Window Manager: Xfwm4)
Window Type: normal window
Geometry (x, y, width, height): 712, 425, 256, 256
Class Group ID: <unset>
Class Instance: (null)
XID: 102760449
PID: <unset>
Session ID: <unset>
Role: <unset>
State: normal
Possible Actions: stick, unstick, change workspace, pin, unpin, minimize, unminimize, close, make above, unmake above, make below, unmake below
```

## let window fullscreen by xid

run

``` sh
$ kmag
```

then run

``` sh
$ wnckprop --list | grep 'KMagnifier'
```

show

```
106954757: KMagnifier
```

then run

```
wnckprop --window=106954757 --make-fullscreen
```

## let window maximize by xid

run

``` sh
$ wnckprop --list | grep 'Terminal'
```

show

```
85991850: Terminal
86018412: Terminal
```

then run

``` sh
$ wnckprop --window=85991850 --maximize
```

or run

``` sh
$ wnckprop --window=85991850 --maximize --activate
```


## activate window by xid

run

``` sh
$ wnckprop --window=85991850 --activate
```


## more

* [help](help.md)
* [help-list](help-list.md)
* [help-window](help-window.md)
* [example-list](example-list.md)
