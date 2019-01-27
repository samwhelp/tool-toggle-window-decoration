
# wnckprop / help


## help-all

run

``` sh
$ wnckprop --help-all
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

Options to list windows or workspaces
  --list                             List windows of the application/class group/workspace/screen (output format: "XID: Window Name")
  --list-workspaces                  List workspaces of the screen (output format: "Number: Workspace Name")

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

Options to modify properties of a workspace
  --change-name=NAME                 Change the name of the workspace to NAME
  --activate                         Activate the workspace

Options to modify properties of a screen
  --set-n-workspaces=NUMBER          Change the number of workspaces of the screen to NUMBER
  --set-workspace-rows=NUMBER        Change the workspace layout of the screen to use NUMBER rows
  --set-workspace-columns=NUMBER     Change the workspace layout of the screen to use NUMBER columns
  --show-desktop                     Show the desktop
  --unshow-desktop                   Stop showing the desktop
  --move-viewport-x=X                Move the viewport of the current workspace to X coordinate X
  --move-viewport-y=Y                Move the viewport of the current workspace to Y coordinate Y

GTK+ Options
  --gtk-class=CLASS                  Program class as used by the window manager
  --name=NAME                        Program name as used by the window manager
  --gdk-debug=FLAGS                  GDK debugging flags to set
  --gdk-no-debug=FLAGS               GDK debugging flags to unset
  --gtk-module=MODULES               Load additional GTK+ modules
  --g-fatal-warnings                 Make all warnings fatal
  --gtk-debug=FLAGS                  GTK+ debugging flags to set
  --gtk-no-debug=FLAGS               GTK+ debugging flags to unset

Application Options:
  --window=XID                       X window ID of the window to examine or modify
  --application=XID                  X window ID of the group leader of an application to examine
  --class=CLASS                      Class resource of the class group to examine
  --workspace=NUMBER                 NUMBER of the workspace to examine or modify
  --screen=NUMBER                    NUMBER of the screen to examine or modify
  --xid=XID                          Alias of --window
  --display=DISPLAY                  X display to use
```
