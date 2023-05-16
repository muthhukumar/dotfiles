## TMUX Configuration Options

### `set-option -g renumber-windows on`

By default, tmux assigns each new window a unique number based on the order in which they were created. This option ensures that window numbers are always sequential, regardless of the order in which they were created or deleted. This can be useful if you frequently create and delete windows, and want to keep track of them more easily.

For example, if you have three windows numbered 1, 2, and 3, and you delete window 2, the default behavior would be to renumber the remaining windows to 1 and 2. With this option enabled, window 3 would be renumbered to 2 instead, so that the remaining windows are still numbered sequentially.

### `set-window-option -g pane-base-index 1`

This option sets the starting index for pane numbers within each window. By default, pane numbers start at 0, but this option allows you to change that to a different value (in this case, 1).

For example, if you have two panes in a window, the default pane numbers would be 0 and 1. With this option enabled, pane numbers would be 1 and 2 instead.

## Commands

### Killing the Server

To terminate the tmux server and close all active sessions and windows, you can use the `tmux kill-server` command. This command is useful when you want to completely reset your tmux environment.
