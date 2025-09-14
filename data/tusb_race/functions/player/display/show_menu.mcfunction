#> tusb_race:player/display/show_menu
#
#

tellraw @s [{"translate":"[INFO] ステータス確認やスキル設定ができます。"}]
scoreboard players enable @s ShowMenu
function tusb_race:player/display/show_menu
