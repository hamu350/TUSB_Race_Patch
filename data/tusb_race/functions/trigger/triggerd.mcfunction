#> tusb_race:trigger/triggerd
#
#

# 攻略率トリガー
execute if score @s ShowMenu matches 1 run function tusb_remake:display/conquer

# ステータストリガー
execute if score @s ShowMenu matches 10 run function tusb_remake:display/job

# スキル変更トリガー
execute if score @s ChangeSkillSet matches 1 run function tusb_race:player/display/skillset

# 設定画面再表示
function tusb_race:player/display/show_menu

##トリガーリセット
scoreboard players reset @s ShowMenu
scoreboard players enable @s ShowMenu
