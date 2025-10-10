#> tusb_remake:brazil/warp
# ブラジルワープ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please

## 職業がないときハローワークに飛ぶ
execute unless data storage tusb_race: settings{start:1b} run give @s minecraft:white_wool 32
execute unless data storage tusb_race: settings{start:1b} run tp @s -1786 113 -137 -90 0

## スポナーにサイレントをつけて音バグ回避
execute in minecraft:overworld run schedule function tusb_remake:brazil/apply_silent 1s

# 指定した位置にTP
execute if data storage tusb_race: settings{start:1b} run function tusb_race:brazil/tp

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race{start:1b} run function tusb_race:brazil/give

execute if data storage tusb_race: settings{start:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.start set value 1b
