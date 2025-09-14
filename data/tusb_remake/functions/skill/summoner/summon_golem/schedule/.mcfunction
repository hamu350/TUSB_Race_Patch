#> tusb_remake:skill/summoner/summon_golem/schedule/
#ゴーレムに対して毎秒実行

execute as @e[tag=PetGolem] at @s run function tusb_remake:skill/summoner/summon_golem/schedule/golem

execute if entity @e[tag=PetGolem] run schedule function tusb_remake:skill/summoner/summon_golem/schedule/ 1s