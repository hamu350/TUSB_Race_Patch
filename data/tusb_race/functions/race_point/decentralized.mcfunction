#> tusb_race:race_point/decentralized
#
# 死亡時スコア分散

tag @s add PointLost

# 最もポイントが低い人に+2
scoreboard players set _ TUSB 2147483647
scoreboard players operation _ TUSB < @a RacePoint
execute as @a[tag=!PointLost] if score @s RacePoint = _ TUSB run scoreboard players add @s RacePoint 2
# 死んだ人以外に+2
execute as @a[tag=!PointLost] run scoreboard players add @s RacePoint 2
scoreboard players reset PlayerCount RacePoint
scoreboard players reset _ RacePoint

tag @s remove PointLost
