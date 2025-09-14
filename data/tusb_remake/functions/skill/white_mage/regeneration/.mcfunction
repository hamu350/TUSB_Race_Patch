#> tusb_remake:skill/white_mage/regeneration/
# ハートブーストを発動させる(402X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 0.6 0

execute if score @s ActivatedSkill matches 4020 run effect give @s minecraft:regeneration 90 0
execute if score @s ActivatedSkill matches 4021 run effect give @s minecraft:regeneration 90 1
execute if score @s ActivatedSkill matches 4022..4029 run effect give @s minecraft:regeneration 90 2

execute as @s at @s run particle note ~ ~1 ~ 0.5 0.5 0.5 0 30 force
