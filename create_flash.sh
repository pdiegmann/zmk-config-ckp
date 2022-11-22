#!/usr/bin/env sh

TEMPFILE=$(mktemp)
curl -Ls -o- 'https://api.github.com/repos/megastep/makeself/releases/latest' | grep '/makeself-' | cut -d : -f 2,3 | tr -d \" | xargs curl -Ls -o $TEMPFILE
bash $TEMPFILE ./flasher flash "Custom BT75 Flasher" ./flash