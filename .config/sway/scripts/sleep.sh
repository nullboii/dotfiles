swayidle -w timeout 300 'swaylock -f -i ~/imgs/walls/cute-poison.png' \
            timeout 600 'systemctl suspend' \
            before-sleep 'swaylock -f -i ~/imgs/walls/cute-poison.png' &
