# dlorg_marko_tadic
### Linux Lab 2026 - Marko Tadic

# Download Organizer
## dlorg

'dlorg' is a tool designed to clean up and automatically organize the downloads directory by sorting files into dedicated subfolders based on their file extensions

## Features

**Real-time monitoring:** 
Uses ´inotifywait´ to actively monitor the downloads folder for newly created files or files moved to the directory and processes them instantly.

**Smart Categorization:**
Automatically routes files into 10 distinct directories:
* `docs` (Word, Excel, PowerPoint, etc.),
* `images` (JPG, PNG, GIF, SVG, etc.),
* `pdfs` (PDF documents),
* `text` (TXT, MD, RTF),
* `videos` (MP4, MKV, AVI, etc.),
* `audio` (MP3, WAV, FLAC, etc.),
* `installers` (EXE, MSI, DEB),
* `archives` (ZIP, TAR, RAR, 7z),
* `code` (Python, JS, HTML, C++, etc.)
* `other` A catch-all folder for unrecognized extensions or files without an extension.

**Loop Protection:**
Automatically ignores changes inside its destination subdirectories to prevent endless processing loops.

**Safe Validation:** 
Checks to ensure incoming files are valid before attempting to categorize them.

## Prerequisites

Before running the script in **Git Bash**, make sure you have `inotify-tools` package installed in your environment to provide the `inotifywait` command.

## Installation & Setup

To install, clone the repository and run the script:
```bash
git clone https://github.com/marko-tadic/dlorg_marko_tadic.git
bash dlorg_marko_tadic/install.sh
```
This will also enable the Organizer Startup Service, which means the script will continue to work in the background every time you log in. 
To check if it is currently enabled, type `systemctl --user status organizer-script.service` in your terminal.
And to enable it: `systemctl --user enable organizer-script.service`
To stop the service: `systemctl --user stop organizer-script.service`
Lastly, to kill the script: `pkill -f dlorg`

## The install script

![Install script](Pictures/install.png)

*Note: If it does not work, try running `chmod +x install.sh`

## Done!
* How it should look once you're done and run `dlorg`! 

![How it should look once you run dlorg](Pictures/dlorg.png)  


* And when moving files: 
  
![Moving files](Pictures/dlorg2.png)  


Good luck and have fun being organized!
