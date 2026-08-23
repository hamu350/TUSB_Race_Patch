#> tusb_race:race_point/decentralized
#
# 死亡時スコア分散

tag @s add PointLost

# 死んだ人のポイント減少
execute as @s[tag=PointLost] run scoreboard players operation @s RacePoint *= $PointLost SpawnerPoint
execute as @s[tag=PointLost] run scoreboard players operation @s RacePoint /= $10 SpawnerPoint

tag @s remove PointLost
