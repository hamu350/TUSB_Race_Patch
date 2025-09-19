#> tusb_remake:skill/owner
#自分がスキル対象になるかどうかを判定

data modify storage tusb_remake: _ set value 0b
execute on owner if entity @s[distance=0] run data modify storage tusb_remake: _ set value 1b
execute on passengers on origin if entity @s[distance=0] run data modify storage tusb_remake: _ set value 1b
execute if entity @s[team=FriendlyTeam] if entity @s[distance=0] run data modify storage tusb_remake: _ set value 1b
execute if data storage tusb_remake: {_:1b} run tag @s add Owner
