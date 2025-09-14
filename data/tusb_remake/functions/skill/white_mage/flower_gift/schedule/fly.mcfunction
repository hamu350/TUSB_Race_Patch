#> tusb_remake:skill/white_mage/flower_gift/schedule/fly
### フラワーギフトが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 音がかわいくなくなったので変更
# playsound minecraft:entity.shulker_bullet.hit master @a[distance=..32] ~ ~ ~ 2 2 0
playsound minecraft:entity.axolotl.idle_air master @a[distance=..32] ~ ~ ~ 2 2 0
particle dust 255 255 255 1 ~ ~ ~ 1 1 1 1 5 force

execute on origin run function tusb_remake:skill/owner

execute if entity @s[tag=FlowerGift1] as @e[distance=..5,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy] unless score @s PlayerId = _ PlayerId at @s run function tusb_remake:skill/white_mage/flower_gift/schedule/hit/1
execute if entity @s[tag=FlowerGift2] as @e[distance=..5,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy] unless score @s PlayerId = _ PlayerId at @s run function tusb_remake:skill/white_mage/flower_gift/schedule/hit/2
execute if entity @s[tag=FlowerGift3] as @e[distance=..5,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy] unless score @s PlayerId = _ PlayerId at @s run function tusb_remake:skill/white_mage/flower_gift/schedule/hit/3

tag @e[tag=Owner] remove Owner

data modify storage tusb_remake: _ set value true
