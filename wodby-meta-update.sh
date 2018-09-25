#!/bin/bash

set -e

cp Dockerfile-alpine.template tmp

# Change basic image.
sed -i '/FROM alpine/i\ARG BASE_IMAGE_TAG\n' tmp
sed -i '/FROM alpine/a\\nARG PHP_DEBUG' tmp
sed -i 's/FROM alpine.*/FROM wodby\/alpine:${BASE_IMAGE_TAG}/' tmp

# For -debug images.
sed -i -E "s/\&\&(.+?-exec strip.+)/\1/" tmp
sed -i '/exec strip/i\    && if [[ \$PHP_DEBUG != 1 ]]; then \\' tmp
sed -i '/exec strip/a\    fi \\' tmp
sed -i '/\$PHP_EXTRA_CONFIGURE_ARGS/i\        $(test "${PHP_DEBUG}" = 1 && echo '"'"'--enable-debug'"'"') \\' tmp

mv tmp Dockerfile-alpine.wodby.template
cp update.sh tmp

# Exclude 7.3-rc, 5.3
sed -i '/versions=( "${versions\[@\]%\/}" )/a\
delete=(5.3 7.3-rc) \
for target in "${delete[@]}"; do \
  for i in "${!versions[@]}"; do \
    if [[ ${versions[i]} = "${target}" ]]; then \
      unset versions[i] \
    fi \
  done \
done' tmp
# Use our template for fmp alpine variants.
sed -i 's/Dockerfile-alpine.template/Dockerfile-alpine.wodby.template/' tmp
sed -i -E 's/stretch jessie alpine.+?\;/alpine3.8;/' tmp
sed -i 's/cli apache fpm zts/fpm/' tmp
sed -i 's/\/Dockerfile"/\/Dockerfile.wodby"/' tmp
# Change .travis.yml modifications.
sed -i -E 's/^(echo "\$travis.*)/#\1/' tmp
sed -i '/fullVersion=/a\    sed -i -E "s/(PHP$majorVersion$minorVersion)=.*/\\1=$fullVersion/" .travis.yml\n' tmp
# Update README.
sed -i '/fullVersion=/a\    sed -i -E "s/\\`$majorVersion\.$minorVersion\.[0-9]+\\`/\\`$fullVersion\\`/" README.md' tmp
sed -i '/fullVersion=/a\\n    sed -i -E "s/\\`$majorVersion\.$minorVersion\.[0-9]+-debug\\`/\\`$fullVersion-debug\\`/" README.md' tmp

mv tmp update.wodby.sh

./update.wodby.sh

rm Dockerfile-alpine.wodby.template
rm update.wodby.sh