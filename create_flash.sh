#!/usr/bin/env sh

temp_dir=$(mktemp -d)
curl -Ls -o- https://api.github.com/repos/megastep/makeself/releases/latest |  \
	grep "/makeself-" |  \
	cut -d : -f 2,3 |  \
	tr -d \" |  \
	xargs curl -Ls -o "$temp_dir/makeself.sh"
bash "$temp_dir/makeself.sh" "./flasher" flash "Custom BT75 Flasher" "./flash"