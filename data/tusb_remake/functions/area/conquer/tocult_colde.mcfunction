#> tusb_remake:area/conquer/tocult_colde
# トカルトコルデ攻略
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ UseEnderEye run data get storage tusb_remake: conquer.count.tocult_colde
execute store result storage tusb_remake: conquer.count.tocult_colde int 1 run scoreboard players add _ UseEnderEye 1

# 追加： アイはめた人は追加ポイントげっちゅ
scoreboard players add @s RacePoint 12
