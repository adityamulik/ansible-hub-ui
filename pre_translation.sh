# Change Directory to clones
cd _clones/

# Extract UI Strings
./compose run --rm --user=0 \
-v _translations:/translations \
ui \
sh -c "npm run gettext:extract && cp /hub/app/locale/en.po /translations/en.po"

# Move files to translations folder
# mv pinakes/locale/en/LC_MESSAGES/django.po translations/

sleep 5
