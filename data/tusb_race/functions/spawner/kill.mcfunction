#> tusb_race:spawner/kill

title @p actionbar 
scoreboard players operation @p SpawnerPoint += @s SpawnerPoint

kill @e[dx=0,tag=Spawner]
