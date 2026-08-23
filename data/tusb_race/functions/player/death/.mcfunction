#> tusb_race:player/death/
#
# 死亡時処理

execute as @s[tag=!OuterLegend] run function tusb_race:race_point/decentralized

tellraw @a {"translate": "%sは死んでしまった...","color": "dark_red","with": [{"selector": "@s"}]}
execute as @s[tag=OuterLegend] run scoreboard players remove @s RacePoint 300
