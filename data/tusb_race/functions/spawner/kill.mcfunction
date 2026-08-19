#> tusb_race:spawner/kill

title @p actionbar {"translate":"+ %s","color":"green","with":[{"score":{"name" : "@s" , "objective" : "SpawnerPoint"}}]}
scoreboard players operation @p RacePoint += @s SpawnerPoint

kill @e[dx=0,tag=Spawner]
