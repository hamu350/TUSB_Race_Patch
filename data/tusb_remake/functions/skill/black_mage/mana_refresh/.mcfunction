#> tusb_remake:skill/black_mage/mana_refresh/
# マナリフレッシュを発動させる(504X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound block.portal.trigger master @a[distance=..16] ~ ~100 ~ 0.1 2 0.4

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
function tusb_remake:skill/black_mage/mana_refresh/apply
