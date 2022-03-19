PATTERN="Location: https://raw.githubusercontent.com/tomashubelbauer/3mf-zip-dir/main/3mf-zip-dir.sh"

# Convert the Nginx response from CRLF to LF
OUTPUT=`curl -I --no-progress-meter hubelbauer.art/3mf | grep "^Location" | tr -d "\r"`;

echo "Output:"
echo "$OUTPUT" | tee output
echo

echo "Pattern:"
echo "$PATTERN" | tee pattern
echo

if [ "$OUTPUT" == "$PATTERN" ]; then
  echo "Match!"
else
  echo "Not a match!"
  exit 1
fi
