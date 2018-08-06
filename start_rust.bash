#!/bin/bash
source $(dirname $0)/.config.bash
source ${HOME}/.secrets/rust

cd ${rustdedicated}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins/x86_64

./RustDedicated -batchmode -logfile ${rustdedicated}/rust.log \
	+server.port 28015 \
	+rcon.port 28016 \
	+rcon.password "${rconpassword}"\
	+server.identity "laboratorium"\
	+server.level "Procedural Map" \
  +server.seed 778 \
	+server.worldsize 3000 \
	+server.maxplayers 3 \
	+server.hostname "laboratorium" \
	+server.description "packt an, loide" \
	+server.url "http://playrust.io/map/?Procedural%20Map_3000_1234" \
	+server.headerimage "https://i.imgur.com/avtS2xz.png"


