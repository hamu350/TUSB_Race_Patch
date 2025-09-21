#> tusb_remake:player/pick_exp/default/get
# 経験値を得られる人がいる場合
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players operation @s[tag=ExpTarget] ExpToLevel -= @s ItemCount
tellraw @s {"translate":"%1$sは%2$sEXPの経験値を得た。","color":"yellow","with":[{"selector":"@s[tag=ExpTarget]"},{"score":{"name":"@s","objective":"ItemCount"},"color":"white","bold":true}]}

### 経験値を取得できた人から、経験値取得音を鳴らします
execute as @s[tag=ExpTarget] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.3 2

tag @s[tag=ExpTarget] remove ExpTarget
