#> tusb_race:end
#
# ゲーム終わり

title @a title {"translate":"ゲーム終了！","color":"white","bold": true}

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1

scoreboard players set @a Rank 0

execute as @a run scoreboard players operation @s TUSB = @s RacePoint

execute as @a run scoreboard players operation 1st RacePoint > @s RacePoint
execute as @a run scoreboard players operation @s RacePoint -= 1st RacePoint
execute as @a[scores={RacePoint=0}] run scoreboard players set @s Rank 1

execute as @a[scores={Rank=0}] run scoreboard players operation 2nd RacePoint > @s RacePoint
execute as @a[scores={Rank=0}] run scoreboard players operation @s RacePoint -= 2nd RacePoint
execute as @a[scores={Rank=0,RacePoint=0}] run scoreboard players set @s Rank 2

execute as @a[scores={Rank=0}] run scoreboard players operation @s RacePoint = @s TUSB 

execute as @a[scores={Rank=0}] run scoreboard players operation 3rd RacePoint > @s RacePoint
execute as @a[scores={Rank=0}] run scoreboard players operation @s RacePoint -= 3rd RacePoint
execute as @a[scores={Rank=0,RacePoint=0}] run scoreboard players set @s Rank 3

execute as @a run scoreboard players operation @s RacePoint = @s TUSB 

tellraw @a {"translate":"%1$sが1位になった！！！","with": [{"selector": "@a[scores={Rank=1}]"}],"color": "gold"}
tellraw @a {"translate":"%1$sが2位になった！！","with": [{"selector": "@a[scores={Rank=2}]"}]}
tellraw @a {"translate":"%1$sが3位になった！","with": [{"selector": "@a[scores={Rank=3}]"}]}

scoreboard players reset 1st RacePoint
scoreboard players reset 2nd RacePoint
scoreboard players reset 3rd RacePoint

data modify storage tusb_race: settings.start set value false
