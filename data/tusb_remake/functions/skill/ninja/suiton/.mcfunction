#> tusb_remake:skill/ninja/suiton/
# 水遁を発動させる(202X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.wolf.pant master @a[distance=..16] ~ ~ ~ 1 0.5 0

execute at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/this

function tusb_remake:skill/ninja/suiton/apply
execute if predicate tusb_remake:is_sneaking as @a[distance=..15] at @s run function tusb_remake:skill/ninja/suiton/apply
tag @e[tag=This] remove This
