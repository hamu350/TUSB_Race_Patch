#> tusb_remake:skill/summoner/hey_cmon/
# ヘイカモン(6020)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 2 1.4 0

## リメイク：引き寄せるペットの数を２倍
scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
tag @s add This
### レベル１
execute if score _ ActivatedSkill matches 6020 as @e[distance=..15,type=!player,team=FriendlyTeam,sort=furthest,limit=10] run function tusb_remake:skill/summoner/hey_cmon/tp/pet

### レベル２
execute if score _ ActivatedSkill matches 6020 as @e[distance=..15,type=!player,team=FriendlyTeam,sort=furthest,limit=20] run function tusb_remake:skill/summoner/hey_cmon/tp/pet
