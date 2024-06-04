#!/usr/bin/env bash

echo "Hello Aleksa:)"
ipatool download --bundle-identifier=com.bancomer.bbva.bancomermovil -o bancomer.ipa --non-interactive --verbose
unzip bancomer.ipa -d bancomer
plutil -convert json bancomer/Payload/BBVA-Mexico.app/info.plist -o output.file
python3 -mjson.tool output.file
