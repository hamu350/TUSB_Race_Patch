#> tusb_remake:skill/white_mage/flower_gift/schedule/hit/3
# フラワーギフトが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 効果量が小さければ、上書きできるように消しておく
execute store result score _ TUSB run attribute @s minecraft:generic.follow_range modifier value get 5eb654be-6e0c-4d98-ba2b-7385beb91de2 -100
execute if score _ TUSB matches ..94 run attribute @s minecraft:generic.follow_range modifier remove 5eb654be-6e0c-4d98-ba2b-7385beb91de2

execute if score _ TUSB matches ..94 run item replace entity @s armor.head with minecraft:blue_orchid{display:{Name:'"白魔導士より愛を込めて"'},AttributeModifiers:[{AttributeName:generic.attack_damage,Operation:1,Slot:"head",Amount:-0.5,UUID:[I;0,2,0,1]}]}
execute if score _ TUSB matches ..94 run item replace entity @s weapon.offhand with minecraft:blue_orchid{display:{Name:'"白魔導士より愛を込めて"'},AttributeModifiers:[{AttributeName:generic.attack_damage,Operation:1,Slot:"head",Amount:-0.5,UUID:[I;0,2,0,1]}]}

### リメイク：効果量アップ
attribute @s minecraft:generic.follow_range modifier add 5eb654be-6e0c-4d98-ba2b-7385beb91de2 "FlowerGift" -0.95 multiply
