#!/bin/bash
source $(dirname $0)/.config.bash

if [ -d /tmp/Oxide-Rust.zip ]; then
	rm /tmp/Oxide-Rust.zip	
fi

cd /tmp
curl -L -O https://github.com/OxideMod/Oxide/releases/download/latest/Oxide-Rust.zip
unzip -o /tmp/Oxide-Rust.zip -d ${rustdedicated}
chown -R steam.steam ${rustdedicated}/RustDedicated_Data
