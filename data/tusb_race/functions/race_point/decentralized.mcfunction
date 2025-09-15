#> tusb_race:race_point/decentralized
#
# 死亡時スコア分散

tag @s add PointLost

# プレイヤーの数*2を引いて死んだ人以外に+2
scoreboard players set _ RacePoint 2
execute store result score PlayerCount RacePoint if entity @a[tag=!PointLost]
scoreboard players operation _ RacePoint *= PlayerCount RacePoint
scoreboard players operation @s RacePoint -= PlayerCount RacePoint
execute as @a[tag=!PointLost] run scoreboard players add @s RacePoint 2
scoreboard players reset PlayerCount RacePoint
scoreboard players reset _ RacePoint