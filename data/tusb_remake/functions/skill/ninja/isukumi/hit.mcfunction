#> tusb_remake:skill/ninja/isukumi/hit
# 居縮が当たった時


playsound minecraft:entity.ghast.hurt master @a[distance=..32] ~ ~ ~ 0.4 2 0.2
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0 60 force

#2秒間移動および攻撃不可
effect give @e[tag=IsukumiAttacked] slowness 10 9
effect give @e[tag=IsukumiAttacked] jump_boost 10 130
effect give @e[tag=IsukumiAttacked] blindness 10 0
