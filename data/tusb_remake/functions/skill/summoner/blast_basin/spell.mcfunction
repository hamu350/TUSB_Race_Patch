#> tusb_remake:skill/summoner/blast_basin/spell
# きらきらタライを詠唱(629X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

execute at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/this

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 6290..6299 run function tusb_remake:skill/summoner/blast_basin/cast

tag @e[tag=This] remove This
