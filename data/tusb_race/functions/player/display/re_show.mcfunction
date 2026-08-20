#> tusb_race:player/display/re_show
#
#

tellraw @s [{"translate":"・ポイントについて  ","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ShowMenu set 100"}},{"translate":"・変更点について  ","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ShowMenu set 1000"}},{"translate":"・追加フレームについて","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ShowMenu set 10000"}},{"translate":"\n\n攻略率表示  /  ","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 1"}},{"translate":"ステータス表示","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 10"}},{"translate":"\n\nスキル変更","bold":true,"color": "yellow","clickEvent":{"action":"run_command","value":"/trigger SkillSetting set 1"}}]

stopsound @s master minecraft:ui.button.click
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
