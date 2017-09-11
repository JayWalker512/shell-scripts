shell-scripts
=============
A collection of scripts I use on my personal machines to make tasks simpler. I primarily use Ubuntu, and most of these scripts will work without installing anything extra. Those that require extra packages are noted below.

Dependencies
------------

md5sum, gzip, grep, awk, ffmpeg, apcaccess


Docs
----

# gzipit <file>
Uses gzip to compress `file` to `file.gz`, and generates a sidecar checksum file using MD5 algorithm titled `file.md5`.

