#> tusb_race:tick/player_tick
#
#

### トリガー
execute if entity @s[scores={SneakingTime=1..}] run function tusb_race:player/trigger/sneak
execute if entity @s[scores={SneakFrequency=1..}] run function tusb_race:player/trigger/sneak_frequency

### プレイヤーゲーム設定
execute unless score @s ShowMenu matches 0 run function tusb_race:player/display/triggerd

# スキル変更トリガー
execute if score @s ChangeSkillSet matches 1 run function tusb_race:player/display/skillset

execute unless score @s SkillSetting matches 0 run function tusb_race:player/display/skilldisplay
