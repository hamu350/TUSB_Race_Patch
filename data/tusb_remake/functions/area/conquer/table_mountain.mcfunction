#> tusb_remake:area/conquer/table_mountain
# テーブルマウンテン攻略
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ UseEnderEye run data get storage tusb_remake: conquer.count.table_mountain
execute store result storage tusb_remake: conquer.count.table_mountain int 1 run scoreboard players add _ UseEnderEye 1

# 追加： アイはめた人は追加ポイントげっちゅ
scoreboard players add @s RacePoint 6
