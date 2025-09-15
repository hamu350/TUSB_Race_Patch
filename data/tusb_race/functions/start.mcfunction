#> tusb_race:start
#
# スタートの合図

# スタートしたフラグ立て
data modify storage tusb_race: settings.start set value 1b

# tellraw
title @a title {"translate": "TUSB_Race開始！！！","color": "gold","bold": true}
