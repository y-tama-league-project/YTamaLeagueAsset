#!bin/bash

# format
# ./replace_streaming_player.sh <match> <table> <seat> <player>
# example
# ./replace_streaming_player.sh 1 1 1 1

match=$(printf "%02d" $1)
table=$(printf "%02d" $2)
seat=$(printf "%02d" $3)
player=$(printf "%02d" $4)

cp "offcial_game/battle_player_info/battle_player_info_${player}.png" "streaming/battle_player_info_${match}_${table}_${seat}.png" || true
cp "offcial_game/player_introduction/illust/player_introduction_illust_${player}.png" "streaming/player_introduction_illust_${match}_${table}_${seat}.png" || true
cp "offcial_game/player_introduction/name/player_introduction_name_${player}.png" "streaming/player_introduction_name_${match}_${table}_${seat}.png" || true
cp "offcial_game/player_introduction/name_front/player_introduction_name_front_${player}.png" "streaming/player_introduction_name_front_${match}_${table}_${seat}.png" || true
cp "offcial_game/interview/interview_${player}.jpg" "streaming/interview_${match}_${table}_${seat}.jpg" || true
cp "offcial_game/interview/player_name_plate_${player}.jpg" "streaming/player_name_plate_${match}_${table}_${seat}.jpg" || true