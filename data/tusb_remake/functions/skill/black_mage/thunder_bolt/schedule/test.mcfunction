#> tusb_remake:skill/black_mage/thunder_bolt/schedule/test
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute on origin at @s as @e[predicate=tusb_remake:player] run function tusb_remake:skill/owner

### 水の有無によって範囲が変わる
execute if score @s TUSB = _ TUSB if entity @s[nbt={Fire:0s}] run function tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/all
execute if score @s TUSB = _ TUSB unless entity @s[nbt={Fire:0s}] run function tusb_remake:skill/black_mage/thunder_bolt/schedule/invoke/single

tag @e[tag=Owner] remove Owner

kill @s
