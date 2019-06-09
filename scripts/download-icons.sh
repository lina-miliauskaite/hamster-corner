#!/bin/sh
set -ex

brand_icons="facebook-f twitter"
solid_icons="envelope-open-text"
dest=../icons/fontawesome
brand_icon_url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/svgs/brands
solid_icon_url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/svgs/solid

mkdir -p "${dest}"

for icon in $brand_icons; do
  icon="${icon}.svg"
  wget -O "${dest}/${icon}" "${brand_icon_url}/${icon}"
done

for icon in $solid_icons; do
  icon="${icon}.svg"
  wget -O "${dest}/${icon}" "${solid_icon_url}/${icon}"
done
