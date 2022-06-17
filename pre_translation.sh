# Change Directory to clones
cd _clones/

# Build Hub Environment
cp .compose.env.example .compose.env
echo $"ANSIBLE_HUB_UI_PATH='_clones/'" >> .compose.env
./compose build

# Extract UI Strings
./compose run --rm --user=0 \
-v _translations:/translations \
ui \
sh -c "npm run gettext:extract && cp /hub/app/locale/en.po /translations/en.po"

# Move files to translations folder
# mv pinakes/locale/en/LC_MESSAGES/django.po translations/

sleep 5
