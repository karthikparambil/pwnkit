### checksum overview

The `checksum.sh` script is a simple Bash tool for verifying file integrity by comparing two user-provided hash values. It prompts for input twice and checks if they match, outputting a confirmation or compromise message accordingly. This basic approach can help detect tampering in files or data during cybersecurity tasks like CTF challenges or vulnerability testing.

​
## Usage Instructions

Run the script with ./checksum.sh after making it executable via chmod +x checksum.sh.
```
Enter the first hash (e.g., an expected MD5 or SHA checksum) when prompted.

Enter the second hash (e.g., a newly computed one from md5sum file or sha256sum file).
```
The script performs a string comparison; mismatches indicate potential integrity issues.

Outputs: Prints "intigrity confirmed" on match or "intigrity compromised" otherwise (note: "integrity" misspelled).
​
