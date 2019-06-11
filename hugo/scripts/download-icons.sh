#!/bin/sh
cd $(dirname $0)
set -ex

brand_icons="facebook-f twitter"
solid_icons="envelope-open-text clock home"


brand_icon_url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/svgs/brands
solid_icon_url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/svgs/solid

mkdir -p "../icons/fontawesome/brand"
mkdir -p "../icons/fontawesome/solid"

for icon in $brand_icons; do
  icon="${icon}.svg"
  wget -O "../icons/fontawesome/brand/${icon}" "${brand_icon_url}/${icon}"
done

for icon in $solid_icons; do
  icon="${icon}.svg"
  wget -O "../icons/fontawesome/solid/${icon}" "${solid_icon_url}/${icon}"
done
