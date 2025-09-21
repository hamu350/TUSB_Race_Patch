#> tusb_remake:display/skilldisplay
#
#

# モードスキル
execute if score @s SkillSetting matches 1 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2
execute if score @s SkillSetting matches 1 run function tusb_remake:skill/display/mode/a
execute if score @s SkillSetting matches 1 run function tusb_remake:skill/display/mode/b

# サポートスキル
execute if score @s SkillSetting matches 10 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
execute if score @s SkillSetting matches 10 run function tusb_remake:skill/display/instant/a
execute if score @s SkillSetting matches 10 run function tusb_remake:skill/display/instant/b

# スコアリセット
scoreboard players reset @s SkillSetting
scoreboard players enable @s SkillSetting
scoreboard players reset @s ChangeSkillSet
scoreboard players enable @s ChangeSkillSet
