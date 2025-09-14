#> tusb_remake:skill/archer/bird_strike/hit/
# バードストライクが当たった時

tp @s @s
tag @s add FallDown
effect give @s minecraft:bad_omen 30 127 true
effect give @s levitation 5 130
effect give @s jump_boost 5 130 true
playsound minecraft:entity.firework_rocket.twinkle_far master @a[distance=..32] ~ ~ ~ 2 0.7 0.2
particle minecraft:cloud ~ ~ ~ 2 3 2 0.1 90 force

execute in minecraft:overworld run schedule function tusb_remake:skill/archer/bird_strike/hit/schedule/ 1t
