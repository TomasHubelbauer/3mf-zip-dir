# Run using `curl hubelbauer.art/3mf | sh`

# Find the 3MF file in the working directory
NAME_3MF=(*.3mf)

# Separate the file name from the file extension
NAME=${NAME_3MF%%.*}

# Create a ZIP file name to use instead of 3MF
NAME_ZIP=$NAME".zip"

# Rename the 3MF file to the ZIP file (to free up the name for the directory)
mv $NAME_3MF $NAME_ZIP

# Unzip the ZIP file to a directory by the same name as the original 3MF file
unzip -d $NAME_3MF $NAME_ZIP

# Delete the ZIP file which is now no longer needed
rm $NAME_ZIP
