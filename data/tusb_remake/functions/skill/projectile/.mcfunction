#> tusb_remake:skill/projectile/
# 飛んでるやーつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: projectile_loop set value false
execute if entity @s run function tusb_remake:skill/projectile/init
### ヒットした対象に対して処理
#execute as @e[tag=NearProjectile] at @s run function tusb_remake:skill/projectile/check_hit
execute as @e[tag=ProjectileHitCheck,predicate=!tusb_remake:has_vehicle] at @s run function tusb_remake:skill/projectile/check_hit
tag @e[tag=NearProjectile] remove NearProjectile
### Projectileのスケジュールで実行
execute as @e[tag=Projectile] at @s run function tusb_remake:skill/projectile/check/

execute if data storage tusb_remake: {projectile_loop:true} in minecraft:overworld run schedule function tusb_remake:skill/projectile/ 1t
