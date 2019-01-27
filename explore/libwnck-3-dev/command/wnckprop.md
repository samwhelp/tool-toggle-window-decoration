

# wnckprop


## help

run

``` sh
$ wnckprop -h
```

or

``` sh
$ wnckprop --help
```

show

```
Usage:
  wnckprop [OPTION…]

Print or modify the properties of a screen/workspace/window, or interact with it, following the EWMH specification.
For information about this specification, see:
	http://freedesktop.org/wiki/Specifications/wm-spec

Help Options:
  -h, --help                         Show help options
  --help-all                         Show all help options
  --help-list                        Show options to list windows or workspaces
  --help-window                      Show options to modify properties of a window
  --help-workspace                   Show options to modify properties of a workspace
  --help-screen                      Show options to modify properties of a screen
  --help-gtk                         Show GTK+ Options

Application Options:
  --window=XID                       X window ID of the window to examine or modify
  --application=XID                  X window ID of the group leader of an application to examine
  --class=CLASS                      Class resource of the class group to examine
  --workspace=NUMBER                 NUMBER of the workspace to examine or modify
  --screen=NUMBER                    NUMBER of the screen to examine or modify
  --xid=XID                          Alias of --window
  --display=DISPLAY                  X display to use
```
