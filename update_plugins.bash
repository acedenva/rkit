#!/bin/bash
source $(dirname $0)/.config.bash
source ${HOME}/.secrets/rust

if [ ! -d ${rkit}/cookies ]; then
	mkdir ${rkit}/cookies
fi

if [ ! -d ${rkit}/logs ]; then
	mkdir ${rkit}/logs
fi

cd ${rustdedicated}/oxide/plugins
rm ${rustdedicated}/oxide/plugins/*

curl --trace ${rkit}/logs/tracert.log\
		 -c ${rkit}/cookies/oxidemod.org\
		 https://oxidemod.org/login/ >> ${rkit}/logs/output1.html

curl --trace ${rkit}/logs/tracert.log\
		 -b ${rkit}/cookies/oxidemod.org\
		 -c ${rkit}/cookies/oxidemod.org\
		 --data-raw "login=${email}&password=${password}&register=0&cookie_check=1"\
		 https://oxidemod.org/login/login >> ${rkit}/logs/output2.html

links=(\
        "https://oxidemod.org/plugins/copy-paste.716/download?version=16142"\
        "https://oxidemod.org/plugins/grteleport.2665/download?version=15875"\
				"https://oxidemod.org/plugins/infinite-ammo.1083/download?version=5904"\
				"https://oxidemod.org/plugins/waypoints.982/download?version=13224"\
				"https://oxidemod.org/plugins/pathfinding.868/download?version=15934"\
				"https://oxidemod.org/plugins/humannpc.856/download?version=15923"\
				"https://oxidemod.org/plugins/kits.668/download?version=16111"\
				"https://oxidemod.org/plugins/n-teleportation.1832/download?version=15856"\
				"https://oxidemod.org/plugins/serverinfo.1317/download?version=14853"\
				"https://oxidemod.org/plugins/entityowner.1255/download?version=15231"\
)


for l in ${links[@]}; do
  curl -O -J \
		-b ${rkit}/cookies/oxidemod.org\
		--trace ${rkit}/logs/tracert.log\
 		${l} >> ${rkit}/logs/output3.html
done


### uMod
ulinks=(\
				"https://umod.org/plugins/BGrade.cs"\
				"https://umod.org/plugins/AdminPanel.cs"\
)

for u in ${ulinks[@]}; do
	curl -O -J ${u}
done	
