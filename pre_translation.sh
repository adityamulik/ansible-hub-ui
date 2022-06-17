# Change Directory to clones
cd _clones/

# Extract UI Strings
npm run gettext:extract

# Move files to translations folder
mv locale/en.po translations/

sleep 5
