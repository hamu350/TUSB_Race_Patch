#> tusb_remake:skill/summoner/summon_petit_black/black/fall
# ぷちブラックに落ちる処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 発動中のサウンド
playsound minecraft:entity.shulker.teleport master @a[distance=..32] ~ ~ ~ 0.2 0.5 0
particle minecraft:portal ~ ~-0.5 ~ 0 0 0 3 20 force

execute on passengers on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner

### 吸い込み効果 なんかめっちゃ目が回る感じになる！
execute as @e[distance=..10,tag=!Owner,predicate=tusb_remake:player] rotated as @s run tp @s ~ ~1 ~ ~6 ~

### ダメージ処理
execute positioned ~-0.5 ~1 ~-0.5 as @e[dy=0,type=#tusb_remake:mob_and_player,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/summoner/summon_petit_black/black/hit
tag @e[tag=Owner] remove Owner
