#!/bin/bash
player_event="${PLAYER_EVENT}"
hostname="marantz_remote.local"

if [[ "$player_event" == "session_connected" || "$player_event" == "session_disconnected" ]]; then
    curl -X POST "http://${hostname}/button/standby/press"
fi