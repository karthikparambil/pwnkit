# Linux Junk Cleaner Script

This script is designed to clean up junk files, cache, system logs, and temporary files from a Linux system. It helps free up disk space and improves system performance by removing unnecessary files and logs. It also includes an animated progress bar for a better user experience.

## Features

- **APT Cache Cleanup:** Removes old package files and package cache.
- **Thumbnail Cache Cleanup:** Removes cached thumbnails to free up space.
- **Browser Cache Cleanup (Firefox):** Clears browser cache from Firefox.
- **System Log Cleanup:** Vacuums old logs to reduce clutter.
- **User Cache Cleanup:** Clears all user-specific cache files.
- **Temporary Files Cleanup:** Deletes files in `/tmp`.
- **Old Kernel Cleanup:** Removes old kernel versions to save disk space.
- **Bleachbit Integration:** Uses `bleachbit` to clean additional system junk.

## Requirements

- **sudo privileges**: Some operations require superuser privileges.
- **bleachbit**: Optional for additional cleanup. Install it with `sudo apt install bleachbit`.

## Usage

1. Download the script.
2. Make the script executable:

```
   chmod +x clean.sh
```
