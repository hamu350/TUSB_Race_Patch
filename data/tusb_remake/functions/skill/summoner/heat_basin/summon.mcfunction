#> tusb_remake:skill/summoner/heat_basin/summon
# あつあつタライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,DropItem:false,HurtEntities:false,FallHurtMax:25,FallHurtAmount:25f,FallDistance:1f,Tags:[PreAtsuTarai,Tarai]}

ride @e[tag=PreTaraiAEC,limit=1,sort=nearest,predicate=!tusb_remake:has_vehicle] mount @e[tag=PreAtsuTarai,limit=1,distance=..0.01]

execute as @e[distance=0,tag=PreAtsuTarai] run data merge entity @s {BlockState:{Name:"minecraft:lily_pad"},Tags:[AtsuTarai,Tarai]}
particle minecraft:lava ~ ~ ~ 0.3 0.1 0.3 0.1 5 force
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~100 ~ 0.01 0.5 0.2
