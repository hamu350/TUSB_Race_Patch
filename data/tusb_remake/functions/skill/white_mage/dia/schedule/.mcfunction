#> tusb_remake:skill/white_mage/dia/schedule/
### ディアが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=Dia] at @s run function tusb_remake:skill/white_mage/dia/schedule/fly

execute on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/white_mage/dia/schedule/ 1t

execute as @e[distance=..1,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy] at @s run function tusb_remake:skill/white_mage/dia/hit

tag @e[tag=Owner] remove Owner
