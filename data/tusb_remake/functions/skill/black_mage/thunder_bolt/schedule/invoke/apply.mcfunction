#> tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/apply
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s remove ThunderBoltTarget

### あたったときの演出
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..32] ~ ~ ~ 2 1.8 0.1
particle minecraft:item minecraft:sunflower ~ ~2 ~ 0 0.1 0 2 30 force @a[distance=..64]
particle crit ~ ~4 ~ 0.1 2 0.1 0.0 90 force

### 威力を設定
execute as @a[tag=Owner] if score @s ActivatedSkill matches 5220 run data modify storage score_damage: Argument set value {Damage:150.00,DamageType:"Projectile"}
execute as @a[tag=Owner] if score @s ActivatedSkill matches 5221 run data modify storage score_damage: Argument set value {Damage:250.00,DamageType:"Projectile"}
execute as @a[tag=Owner] if score @s ActivatedSkill matches 5222..5229 run data modify storage score_damage: Argument set value {Damage:400.00,DamageType:"Projectile"}

execute if entity @s[predicate=tusb_remake:player] as @a[tag=Owner] if score @s[predicate=tusb_remake:player] ActivatedSkill matches 5220 run data modify storage score_damage: Argument set value {Damage:75.00,DamageType:"Projectile"}
execute if entity @s[predicate=tusb_remake:player] as @a[tag=Owner] if score @s[predicate=tusb_remake:player] ActivatedSkill matches 5221 run data modify storage score_damage: Argument set value {Damage:150.00,DamageType:"Projectile"}
execute if entity @s[predicate=tusb_remake:player] as @a[tag=Owner] if score @s[predicate=tusb_remake:player] ActivatedSkill matches 5222..5229 run data modify storage score_damage: Argument set value {Damage:250.00,DamageType:"Projectile"}

### ダメージを与える
function score_damage:api/attack
