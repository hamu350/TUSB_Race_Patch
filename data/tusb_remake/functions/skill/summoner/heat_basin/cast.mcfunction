#> tusb_remake:skill/summoner/heat_basin/cast
# あつあつタライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
execute rotated as @e[distance=..15,tag=!This,predicate=tusb_remake:player] run summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["TaraiAEC","PreTaraiAEC"]}
data modify storage tusb_remake: _ set from entity @s UUID
execute as @e[distance=..0.01,tag=TaraiAEC] unless data entity @s Owner run data modify entity @s Owner set from storage tusb_remake: _

execute as @e[distance=..15,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ anchored feet positioned ~ ~1.0 ~ run function tusb_remake:skill/summoner/heat_basin/summon

tag @e[tag=PreTaraiAEC] remove PreTaraiAEC
tag @e[tag=This] remove This

execute in minecraft:overworld run schedule function tusb_remake:skill/summoner/heat_basin/schedule/ 1t
