#> tusb_race:trigger/sneak_frequency
#
#

#> 設定表示
execute if score @s SneakFrequency matches 20.. run function tusb_race:player/display/show_menu
execute if score @s SneakFrequency matches 20.. run scoreboard players set @s SneakFrequency 1

scoreboard players remove @s SneakFrequency 1
