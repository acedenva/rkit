#!/bin/bash
source $(dirname $0)/.config.bash

servers=`ls ${rustdedicated}/server`
backup='/home/steam/backup/rust'

if [ ! -d ${backup} ]; then
				mkdir -p ${backup}
fi

for srv in ${servers[@]}; do
	if [ ! -d ${backup}/cfg/${srv} ]; then
		mkdir -p ${backup}/cfg/${srv}	
	fi
	rsync -u ${rustdedicated}/server/${srv}/cfg/* ${backup}/cfg/${srv}/
done
