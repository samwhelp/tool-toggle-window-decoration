
# wnckprop / example


## list all

``` sh
$ wnckprop --workspace=0
```

## info by workspace

run

``` sh
$ wnckprop --workspace=3
```

or

``` sh
$ wnckprop --workspace=2
```

or

``` sh
$ wnckprop --workspace=1
```

or

``` sh
$ wnckprop --workspace=0
```

show like

```
Workspace Name: Workspace 1
Workspace Number: 0
On Screen: 0 (Window Manager: Xfwm4)
Geometry (width, height): 1680, 1050
Viewport position (x, y): <no viewport>
Position in Layout (row, column): 0, 0
Left Neighbor: none
Right Neighbor: 1 ("Workspace 2")
Top Neighbor: none
Bottom Neighbor: none
```

## activate by workspace

run

``` sh
$ wnckprop --activate --workspace=0
```

or

``` sh
$ wnckprop --activate --workspace=1
```

or

``` sh
$ wnckprop --activate --workspace=2
```

or

``` sh
$ wnckprop --activate --workspace=3
```

switch to workspace n.


## change name by workspace

run

``` sh
$ wnckprop --list-workspaces
```

show

```
0: Workspace 1
1: Workspace 2
2: Workspace 3
3: Workspace 4
```

then run

``` sh
$ wnckprop --change-name="test" --workspace=0
```

then run

``` sh
$ wnckprop --list-workspaces
```

show

```
0: test
1: Workspace 2
2: Workspace 3
3: Workspace 4
```

## more

* [help](help.md)
* [help-workspace](help-workspace.md)
* [help-list-workspaces](help-list-workspaces.md)
* [example-list-workspaces](example-list-workspaces.md)
