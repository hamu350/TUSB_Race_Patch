#> tusb_race:player/display/triggerd
#
#

# 攻略率トリガー
execute if score @s ShowMenu matches 1 run function tusb_remake:display/conquer

# ステータストリガー
execute if score @s ShowMenu matches 10 run function tusb_remake:display/job

# ポイントトリガー
execute if score @s ShowMenu matches 100 run function tusb_race:player/display/point_show

# 変更点表示トリガー
execute if score @s ShowMenu matches 1000 run function tusb_race:player/display/tips_show

# 追加島表示トリガー
execute if score @s ShowMenu matches 10000 run function tusb_race:player/display/island_show

# スキル変更トリガー
execute if score @s ChangeSkillSet matches 1 run function tusb_race:player/display/skillset

# 設定画面再表示
function tusb_race:player/display/show_menu

##トリガーリセット
scoreboard players reset @s ShowMenu
scoreboard players enable @s ShowMenu
