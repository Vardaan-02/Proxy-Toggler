# GNOME Proxy Toggle Script

A simple Bash script to toggle GNOME system proxy settings on and off with a single command or keyboard shortcut.

## Features

- Instantly switches between manual proxy and no proxy modes
- Configurable for your own proxy server
- Works with GNOME desktop environments (e.g., Fedora, Ubuntu)

## Usage

1. **Clone or Download the Script**

   Clone `Proxy-Toggler` to your computer.

2. **Configure Your Proxy**

   Create a .env file in the same directory and enter your username and password (url-encoded) as mentioned in .env.example
   Open the script in a text editor and set your proxy IP and port

4. **Make the Script Executable**

   `chmod +x /path/to/runner.sh /path/to/toggle-proxy-terminal.sh /path/to/toggle_proxy.sh /path/to/first-run.sh`


5. **(Optional) Move the Script to Your PATH**

    For easy access, move it to a directory in your PATH, such as `~/.local/bin`:


6. **Run the Script**

    From any terminal: `runner.sh`


7. **(Optional) Set Up a Keyboard Shortcut**

- Open GNOME Settings → Keyboard → Keyboard Shortcuts.
- Add a new custom shortcut.
- Set the command to the full path of your script (e.g., `/home/yourname/.local/bin/runner`).
- Assign your preferred key combination (e.g., Ctrl+Alt+P).

## Requirements

- GNOME desktop environment
- Bash shell
- `gsettings` and `notify-send` utilities (usually present by default)

**Enjoy fast proxy toggling!**




