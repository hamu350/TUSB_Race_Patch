#> tusb_remake:skill/archer/enchase/
# エンチェイス付与(304X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 1.4 0

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
function tusb_remake:skill/archer/enchase/apply

