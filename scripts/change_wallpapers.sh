WALLPAPERS_FOLDER=/home/heverton/Pictures/Wallpapers
HYPRPAPER_CONFIG=~/.config/hypr/hyprpaper.conf

wallpapers=$(ls -1 $WALLPAPERS_FOLDER | tr '\n' ',')

IFS=',' read -r -a wallpapers_array <<<"$wallpapers"

length_wallpaper_array="${#wallpapers_array}"

ramdom_wallpaper=$(($RANDOM % length_wallpaper_array + 1))

printf "preload = %s%s\n" "$WALLPAPERS_FOLDER/" "${wallpapers_array[ramdom_wallpaper]}" >$HYPRPAPER_CONFIG
printf "wallpaper = , %s%s\n" "$WALLPAPERS_FOLDER/" "${wallpapers_array[ramdom_wallpaper]}" >>$HYPRPAPER_CONFIG
echo "splash = false" >>$HYPRPAPER_CONFIG

killall hyprpaper
hyprpaper &
