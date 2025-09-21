#> tusb_remake:skill/archer/decel_trap/
# ボミオストラップを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/this

### ボミオストラップを召喚
execute if score @s ActivatedSkill matches 3020 run summon minecraft:arrow ~ ~ ~ {Silent:true,damage:0d,life:800s,Tags:[TypeChecked],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:lingering_potion",Count:1b},CustomName:'"⇩SPD⇩"',CustomNameVisible:true,Tags:[Decel,Decel1,ArcherTrap,TypeChecked]}]}
execute if score @s ActivatedSkill matches 3021..3029 run summon minecraft:arrow ~ ~ ~ {Silent:true,damage:0d,life:800s,Tags:[TypeChecked],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:lingering_potion",Count:1b},CustomName:'"⇩⇩SPD⇩⇩"',CustomNameVisible:true,Tags:[Decel,Decel2,ArcherTrap,TypeChecked]}]}

data modify entity @e[tag=Decel,limit=1,sort=nearest] Owner set from entity @s UUID

### ボミオストラップの判定を有効化
function tusb_remake:skill/archer/decel_trap/schedule/
tag @e[tag=This] remove This
