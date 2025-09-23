#> tusb_race:start
#
# スタートの合図

# スタートしたフラグ立て
data modify storage tusb_race: settings.start set value 1b

# tellraw
title @a title {"translate": "TUSB_Race開始！！！","color": "gold","bold": true}

setworldspawn -1743 104 -137 ~

execute as @a run effect clear @s

execute as @a at @s run function tusb_remake:brazil/warp
