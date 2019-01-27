
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
$ cd build
```

then run

``` sh
$ ninja
```

## How to test


### basic

run

``` sh
$ ./wnck-win-list
```

### list window info

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal'
```

show

```
window_xid: 86166045;   window_class: Gnome-terminal;   application_name: Terminal;   window_name: Terminal
window_xid: 86025324;   window_class: Gnome-terminal;   application_name: Terminal;   window_name: Terminal
```

### grep window info


#### window_xid

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $1}'
```

show

```
window_xid: 86166045
window_xid: 86025324
```

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $1}' | awk -F ': ' '{print $2}'
```

show

```
86166045
86025324
```

#### window_class

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $2}'
```

show

```
window_class: Gnome-terminal
window_class: Gnome-terminal
```

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $2}' | awk -F ': ' '{print $2}'
```

show

```
Gnome-terminal
Gnome-terminal
```

#### application_name

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $3}'
```

show

```
application_name: Terminal
application_name: Terminal
```

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $3}' | awk -F ': ' '{print $2}'
```

show

```
Terminal
Terminal
```

#### window_name

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $4}'
```

show

```
window_name: Terminal
window_name: Terminal
```

run

``` sh
$ ./wnck-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $4}' | awk -F ': ' '{print $2}'
```

show

```
Terminal
Terminal
```

## Reference

* https://github.com/GNOME/devilspie/
