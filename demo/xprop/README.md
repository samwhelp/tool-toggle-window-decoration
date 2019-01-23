
## Reference

* https://github.com/sunwxg/gnome-shell-extension-undecorate/blob/master/undecorate%40sun.wxg%40gmail.com/extension.js
* https://askubuntu.com/questions/928226/xprop-fails-to-undecorate-window


## Test

### decorate

run [test-decorate.sh](test-decorate.sh)

``` sh
$ ./test-decorate.sh
```

show

```
_MOTIF_WM_HINTS(CARDINAL) = 2, 0, 1, 0, 0
```

### undecorate

run [test-undecorate.sh](test-undecorate.sh)

``` sh
$ ./test-undecorate.sh
```

show

```
_MOTIF_WM_HINTS(CARDINAL) = 2, 0, 0, 0, 0
```
