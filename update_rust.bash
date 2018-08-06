#!/bin/bash
#
source $(dirname ${0})/.config.bash

steamcmd +login anonymous +force_install_dir ${rustdedicated} +app_update 258550 +exit

