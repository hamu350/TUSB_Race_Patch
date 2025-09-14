#> tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/single
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned ~-5 ~-5 ~-5 run tag @e[dx=10,dy=20,dz=10,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=Enemy] add ThunderBoltTarget
execute positioned ~ ~20 ~ as @e[distance=..28,tag=!This,tag=!Owner,type=#tusb_remake:mob_and_player,tag=ThunderBoltTarget,sort=nearest,limit=1] at @s run function tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/apply
