#> tusb_remake:skill/projectile/check/normal
# ノーマル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute on passengers on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner
tag @e[type=#tusb_remake:mob_and_player,distance=..2,tag=!This,tag=!Owner] add NearProjectile
scoreboard players operation @e[type=#tusb_remake:mob_and_player,distance=..5,tag=!This,tag=!Owner,tag=NearProjectile] PotentialSkill = @s ProjectileSkill
tag @e[tag=Owner] remove Owner