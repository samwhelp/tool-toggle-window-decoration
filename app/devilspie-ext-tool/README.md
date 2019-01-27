
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
/usr/local/bin/devilspie-win-info
/usr/local/share/devilspie-ext-tool/devilspie-win-info.sh
/usr/local/share/devilspie-ext-tool/devilspie-win-info.ds
```

```
/usr/local/bin/devilspie-win-list
/usr/local/share/devilspie-ext-tool/devilspie-win-list.sh
/usr/local/share/devilspie-ext-tool/devilspie-win-list.ds
```

```
/usr/local/bin/devilspie-debug-info
/usr/local/share/devilspie-ext-tool/devilspie-debug-info.sh
/usr/local/share/devilspie-ext-tool/devilspie-debug-info.ds
```

## How to test **devilspie-win-info**

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

## How to test **devilspie-win-list**

### list window info

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal'
```

show

```
window_xid: 85991850;   window_workspace: 1;   window_class: Gnome-terminal;   window_role: gnome-terminal-window-2bd9eb58-c4cb-4554-a145-aed5ead9c55b;   application_name: Terminal;   window_name: Terminal;   
window_xid: 85983242;   window_workspace: 1;   window_class: Gnome-terminal;   window_role: gnome-terminal-window-9dd5b0de-e561-4011-9fa2-d841ca36d585;   application_name: Terminal;   window_name: Terminal;
```

### grep window info


#### window_xid

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $1}'
```

show

```
window_xid: 85991850
window_xid: 85983242
```

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $1}' | awk -F ': ' '{print $2}'
```

show

```
85991850
85983242
```

#### window_workspace

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $2}'
```

show

```
window_workspace: 1
window_workspace: 1
```

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $2}' | awk -F ': ' '{print $2}'
```

show

```
1
1
```

#### window_class

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $3}'
```

show

```
window_class: Gnome-terminal
window_class: Gnome-terminal
```

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $3}' | awk -F ': ' '{print $2}'
```

show

```
Gnome-terminal
Gnome-terminal
```

#### window_role

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $4}'
```

show

```
window_role: gnome-terminal-window-2bd9eb58-c4cb-4554-a145-aed5ead9c55b
window_role: gnome-terminal-window-9dd5b0de-e561-4011-9fa2-d841ca36d585
```

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $4}' | awk -F ': ' '{print $2}'
```

show

```
gnome-terminal-window-2bd9eb58-c4cb-4554-a145-aed5ead9c55b
gnome-terminal-window-9dd5b0de-e561-4011-9fa2-d841ca36d585
```

#### application_name

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $5}'
```

show

```
application_name: Terminal
application_name: Terminal
```

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $5}' | awk -F ': ' '{print $2}'
```

show

```
Terminal
Terminal
```

#### window_name

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $6}'
```

show

```
window_name: Terminal
window_name: Terminal
```

run

``` sh
$ devilspie-win-list | grep -i 'gnome-terminal' | awk -F ';   ' '{print $6}' | awk -F ': ' '{print $2}'
```

show

```
Terminal
Terminal
```

## How to test **devilspie-debug-info**

### list window info

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal'
```

show

```
Window Title: 'Terminal'; Application Name: 'Terminal'; Class: 'Gnome-terminal'; Geometry: 1680x1018+0+32
Window Title: 'Terminal'; Application Name: 'Terminal'; Class: 'Gnome-terminal'; Geometry: 901x593+0+457
```

### grep window info


#### Window Title

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $1}'
```

show

```
Window Title: 'Terminal'
Window Title: 'Terminal'
```

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $1}' | awk -F ': ' '{print $2}'
```

show

```
'Terminal'
'Terminal'
```

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $1}' | awk -F ': ' '{print substr($2, 2, length($2) - 2)}'
```

show

```
Terminal
Terminal
```

#### Application Name

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $2}'
```

show

```
Application Name: 'Terminal'
Application Name: 'Terminal'
```

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $2}' | awk -F ': ' '{print $2}'
```

show

```
'Terminal'
'Terminal'
```

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $2}' | awk -F ': ' '{print substr($2, 2, length($2) - 2)}'
```

show

```
Terminal
Terminal
```

#### Class

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $3}'
```

show

```
Class: 'Gnome-terminal'
Class: 'Gnome-terminal'
```

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $3}' | awk -F ': ' '{print $2}'
```

show

```
'Gnome-terminal'
'Gnome-terminal'
```

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $3}' | awk -F ': ' '{print substr($2, 2, length($2) - 2)}'
```

show

```
Gnome-terminal
Gnome-terminal
```

#### window_role

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $4}'
```

show

```
Geometry: 1680x1018+0+32
Geometry: 901x593+0+457
```

run

``` sh
$ devilspie-debug-info | grep -i 'gnome-terminal' | awk -F '; ' '{print $4}' | awk -F ': ' '{print $2}'
```

show

```
1680x1018+0+32
901x593+0+457
```
