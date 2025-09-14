#> tusb_remake:skill/summoner/blast_basin/summon
# きらきらタライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:snowball ~ ~ ~ {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:chorus_flower"},Time:1,DropItem:false,HurtEntities:false,FallHurtMax:25,FallHurtAmount:25f,FallDistance:1f,Tags:[PreKiraTnt,Tarai]}]}
ride @e[tag=PreTaraiAEC,limit=1,sort=nearest,predicate=!tusb_remake:has_vehicle] mount @e[tag=PreKiraTnt,limit=1,distance=..0.01]
execute as @e[distance=..1,tag=PreKiraTnt] run data merge entity @s {BlockState:{Name:"minecraft:lily_pad"},Tags:[KiraTnt,Tarai]}
