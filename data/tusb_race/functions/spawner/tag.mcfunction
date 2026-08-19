#> tusb_race:spawner/tag

scoreboard players set @s RacePoint 1
execute if block ~ ~ ~ minecraft:obsidian run scoreboard players set @s RacePoint 3

tag @s add SpawnerChecked