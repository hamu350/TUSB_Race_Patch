#> tusb_remake:skill/summoner/summon_golem/schedule/golem
#ゴーレムに対して毎秒実行

execute on passengers on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner
execute if predicate tusb_remake:has_target run data modify entity @s AngryAt set from entity @e[predicate=tusb_remake:player,limit=1,sort=nearest,tag=!Owner] UUID
execute if predicate tusb_remake:target_owner run tag @s add Garbage
tag @e[tag=Owner] remove Owner
execute unless data entity @s Passengers run tag @s add Garbage