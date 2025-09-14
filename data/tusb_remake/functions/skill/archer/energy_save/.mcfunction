#> tusb_remake:skill/archer/energy_save/
# エナジーセーブ付与(306X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1.4 0

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
function tusb_remake:skill/archer/energy_save/apply
