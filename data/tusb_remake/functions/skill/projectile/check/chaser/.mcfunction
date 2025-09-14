#> tusb_remake:skill/projectile/check/chaser/
# エンチェイス
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage score_damage: Argument set value {Damage:0.00,DamageType:"Projectile"}
execute store result storage score_damage: Argument.Damage double 0.01 run data get entity @s damage 250

scoreboard players operation _ PotentialSkill = @s ProjectileSkill

execute on origin run function tusb_remake:skill/use_damage_skill
execute on passengers on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner

### リメイク：エンチェイスの範囲を拡大
data modify storage tusb_remake: chaser_invoked set value false
execute if entity @s[tag=Chaser1] as @e[distance=..5,tag=!Owner,sort=nearest,limit=1] at @s run function tusb_remake:skill/projectile/check/chaser/apply
execute if entity @s[tag=Chaser2] as @e[distance=..10,tag=!Owner,sort=nearest,limit=1] at @s run function tusb_remake:skill/projectile/check/chaser/apply

tag @e[tag=Owner] remove Owner

### 発動したなら消す
execute if data storage tusb_remake: {chaser_invoked:true} run function tusb_remake:skill/projectile/check/chaser/remove/
