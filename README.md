# GNOME Proxy Toggle Script

A simple Bash script to toggle GNOME system proxy settings on and off with a single command or keyboard shortcut.

## Features

- Instantly switches between manual proxy and no proxy modes
- Configurable for your own proxy server
- Works with GNOME desktop environments (e.g., Fedora, Ubuntu)

## Usage

1. **Clone or Download the Script**

   Download `toggle_proxy.sh` to your computer.

2. **Configure Your Proxy**

   Open the script in a text editor and set your proxy IP and port

3. **Make the Script Executable**

   `chmod +x /path/to/toggle_proxy.sh`


4. **(Optional) Move the Script to Your PATH**

    For easy access, move it to a directory in your PATH, such as `~/.local/bin`:


5. **Run the Script**

    From any terminal: `toggle_proxy`


6. **(Optional) Set Up a Keyboard Shortcut**

- Open GNOME Settings → Keyboard → Keyboard Shortcuts.
- Add a new custom shortcut.
- Set the command to the full path of your script (e.g., `/home/yourname/.local/bin/toggle_proxy`).
- Assign your preferred key combination (e.g., Ctrl+Alt+P).

## Requirements

- GNOME desktop environment
- Bash shell
- `gsettings` and `notify-send` utilities (usually present by default)

**Enjoy fast proxy toggling!**




