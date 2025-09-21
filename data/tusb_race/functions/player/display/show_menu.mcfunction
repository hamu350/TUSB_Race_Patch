#> tusb_race:player/display/show_menu
#
#

tellraw @s [{"translate":"[INFO] ステータス確認やスキル設定ができます。"}]

# スコアリセット
scoreboard players enable @s ChangeSkillSet
scoreboard players enable @s SkillSetting
scoreboard players enable @s ShowMenu

function tusb_race:player/display/re_show
