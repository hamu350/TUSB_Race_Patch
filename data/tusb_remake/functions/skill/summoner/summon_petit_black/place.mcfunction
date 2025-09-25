#> tusb_remake:skill/summoner/summon_petit_black/place
# ぷちブラックを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

setblock ~ ~ ~ minecraft:obsidian keep

summon minecraft:item_frame ~ ~ ~ {Fixed:true,Invulnerable:true,Invisible:true,Facing:1b,Tags:[MagicBlock,MagicPetitBlack,PreMagicBlock,PrePetitBlack,PetitBlack,SystemEntity,TypeChecked]}
summon area_effect_cloud ~ ~ ~ {Tags:["PetitBlackAEC","PrePetitBlackAEC"],Duration:290}
data modify entity @e[tag=PrePetitBlackAEC,limit=1,sort=nearest] Owner set from entity @s UUID
ride @e[tag=PrePetitBlackAEC,limit=1,sort=nearest] mount @e[tag=PrePetitBlack,limit=1,sort=nearest]