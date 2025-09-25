#> tusb_remake:skill/ninja/isukumi/schedule/
### 居縮が飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=Isukumi] at @s run function tusb_remake:skill/ninja/isukumi/schedule/fly

execute on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner

execute as @e[distance=..0.8,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy] at @s unless score @s PlayerId = _ PlayerId run function tusb_remake:skill/ninja/isukumi/hit

tag @e[tag=Owner] remove Owner

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/ninja/isukumi/schedule/ 1t

