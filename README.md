shell-scripts
=============
A collection of scripts I use on my personal machines to make tasks easier. I primarily use Ubuntu, and most of these scripts will work without installing anything extra. Those that require extra packages are noted below.

Dependencies
------------

md5sum, gzip, grep, awk, ffmpeg, apcaccess

Docs
----

# gzipit \<file>
Uses gzip (or pigz, if available) to compress `file` to `file.gz`, and generates a sidecar checksum file using MD5 algorithm titled `file.md5`.

# md5sc \<file>
Creates an MD5 checksum sidecar file titled `file.md5`, which contains only the MD5 checksum for `file`.

# md5v \<file>
Looks for am MD5 checksum sidecar file called `file.md5`, and compares the checksum contained in it to the MD5 checksum of `file`. Reports whether they match or not, indicating integrity (or lack therof) of `file`. 

# find_code \<file match pattern> \<string>
Recursively searches files in the current directory  which match the `file match pattern` for the provided `string`. Prints the file, line number, and text where the string occurs if it is found.

Eg: `find_code "*.php" "echo"` will find all the occurrences of "echo" in PHP files in the current directory and subdirectories.  
