#> tusb_race:player/display/re_show
#
#

tellraw @s ["",{"translate":"・攻略率表示","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 1"}}," ",{"translate":"・ステータス表示","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 10"}}," ",{"translate":"・スキル変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSkillSet set 1"}}," ",{"translate":"・ポイントについて","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ShowMenu set 100"}}," ",{"translate":"・変更点について","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ShowMenu set 1000"}}," ",{"translate":"・追加フレームについて","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ShowMenu set 10000"}}]

stopsound @s master minecraft:ui.button.click
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
