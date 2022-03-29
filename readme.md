# 3MF OPC ZIP file to a directory

![](https://github.com/tomashubelbauer/3mf-zip-dir/workflows/redirect.pizza/badge.svg)

This shell script scans the current directory for a 3MF file (an OPC ZIP format
used in the CAD industry, for example by PrusaSlicer) and extracts the file to
a directory by the same name, then deletes the file.

This is useful for versioning 3MF, because the ZIP file itself is not fit for
plain text versioning, but the archive contains plain text files (with the
exception of the thumbnail image) which are individually fit for versioning.

Running this script on a changed 3MF file prior to each commit makes the project
versioning much more useful. It is up to the user whether they want to keep the
3MF file and just ignore it in Git (or not even that). To do that, update the
script to remove the `rm` statement.

To run the script, use this command line:

```sh
curl -L hubelbauer.art/3mf | sh
```
