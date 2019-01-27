
# wnckprop / help


## help-window

run

``` sh
$ wnckprop --help-window
```

show

```
Usage:
  wnckprop [OPTION…]

Print or modify the properties of a screen/workspace/window, or interact with it, following the EWMH specification.
For information about this specification, see:
	http://freedesktop.org/wiki/Specifications/wm-spec

Options to modify properties of a window
  --minimize                         Minimize the window
  --unminimize                       Unminimize the window
  --maximize                         Maximize the window
  --unmaximize                       Unmaximize the window
  --maximize-horizontally            Maximize horizontally the window
  --unmaximize-horizontally          Unmaximize horizontally the window
  --maximize-vertically              Maximize vertically the window
  --unmaximize-vertically            Unmaximize vertically the window
  --keyboard-move                    Start moving the window via the keyboard
  --keyboard-resize                  Start resizing the window via the keyboard
  --activate                         Activate the window
  --close                            Close the window
  --make-fullscreen                  Make the window fullscreen
  --unmake-fullscreen                Make the window quit fullscreen mode
  --make-above                       Make the window always on top
  --unmake-above                     Make the window not always on top
  --make-below                       Make the window below other windows
  --unmake-below                     Make the window not below other windows
  --shade                            Shade the window
  --unshade                          Unshade the window
  --stick                            Make the window have a fixed position in the viewport
  --unstick                          Make the window not have a fixed position in the viewport
  --skip-pager                       Make the window not appear in pagers
  --unskip-pager                     Make the window appear in pagers
  --skip-tasklist                    Make the window not appear in tasklists
  --unskip-tasklist                  Make the window appear in tasklists
  --pin                              Make the window visible on all workspaces
  --unpin                            Make the window visible on the current workspace only
  --set-workspace=NUMBER             Move the window to workspace NUMBER (first workspace is 0)
  --set-x=X                          Change the X coordinate of the window to X
  --set-y=Y                          Change the Y coordinate of the window to Y
  --set-width=WIDTH                  Change the width of the window to WIDTH
  --set-height=HEIGHT                Change the height of the window to HEIGHT
  --set-window-type=TYPE             Change the type of the window to TYPE (valid values: normal, desktop, dock, dialog, toolbar, menu, utility, splash)

```
