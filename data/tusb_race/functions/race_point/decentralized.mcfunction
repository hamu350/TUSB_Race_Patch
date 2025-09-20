#> tusb_race:race_point/decentralized
#
# 死亡時スコア分散

tag @s add PointLost

# 最もポイントが低い人に+3
scoreboard players set _ TUSB 2147483647
scoreboard players operation _ TUSB < @a RacePoint
execute as @a if score @s RacePoint = _ TUSB run scoreboard players add @s RacePoint 2
# プレイヤーの人数*2(*1)を引いて死んだ人以外に+2(+1)
execute store result score PlayerCount RacePoint if entity @a[tag=!PointLost]
execute if score PlayerCount RacePoint matches ..3 run scoreboard players set _ RacePoint 2
execute if score PlayerCount RacePoint matches 4.. run scoreboard players set _ RacePoint 1
scoreboard players operation _ RacePoint *= PlayerCount RacePoint
scoreboard players operation @s RacePoint -= _ RacePoint
execute as @a[tag=!PointLost] if score PlayerCount RacePoint matches ..3 run scoreboard players add @s RacePoint 2
execute as @a[tag=!PointLost] if score PlayerCount RacePoint matches 4.. run scoreboard players add @s RacePoint 1
execute as @a[tag=PointLost] run scoreboard players remove @s RacePoint 2
scoreboard players reset PlayerCount RacePoint
scoreboard players reset _ RacePoint

tag @s remove PointLost
