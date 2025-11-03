# Pentest Scripts — README

Short: Minimal, tidy repo for CTF / pentest practice. Use only in lab environments or with explicit permission.

Repo layout (simple)
/  
├─ Enumeration/        # recon helpers (readme.md)
├─ Exploits/
│  └─ lxd2root/        # LXD PoC: README.md + lxd2root.sh
├─ Autonum/
│  └─ auto-num.py      # file/ID numbering helper
├─ Miscellaneous/      # utilities

## Scripts 

### Enumeration
Quick notes for your scanning and enumeration tools (commands, wordlists).

<a href="Exploits/lxd2root/lxd2root.sh">lxd2root.sh</a>
Proof-of-concept local privilege escalation for lab use only. Read the exploit README.md before running.

Autonum/auto-num.py
Rename / add sequential numbers to files (use --dry-run first). Useful to tidy CTF challenge assets.

How to document new scripts (copy this header at top)
# Name: short-name
# Purpose: one-line description
# Usage: example command
# Safety: lab-only / permission required

Safety & housekeeping

Always run exploits in disposable VMs or test containers.

Add secrets and flags to .gitignore (*.key, *.pem, flags.txt).

Use descriptive commit messages. Keep each exploit in its own folder with a short README.

Contribution

Fork → branch → add folder + README.md → PR.

Include usage, dependencies, and a safe test plan.
