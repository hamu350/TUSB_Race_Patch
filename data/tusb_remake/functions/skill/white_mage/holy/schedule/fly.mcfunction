#> tusb_remake:skill/white_mage/holy/schedule/fly
### ホーリーが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
particle end_rod ~ ~ ~ 1 1 1 0.1 3 force

execute on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner

execute as @e[distance=..8,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/white_mage/holy/schedule/hit

tag @e[tag=Owner] remove Owner

data modify storage tusb_remake: _ set value true
