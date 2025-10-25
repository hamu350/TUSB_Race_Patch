#> tusb_race:player/death/
#
# 死亡時処理

# スコア分散
function tusb_race:race_point/decentralized

# effect付与
effect give @s resistance 15 127
effect give @s glowing infinite 127 true

# 死亡報酬
function tusb_race:player/death/reward/
