PATTERN="Location: https://raw.githubusercontent.com/tomashubelbauer/3mf-zip-dir/main/3mf-zip-dir.sh"

OUTPUT=`curl -I --no-progress-meter http://hubelbauer.art | grep "^Location"`;

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
