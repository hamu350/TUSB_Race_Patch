#> tusb_race:player/death/
#
# 死亡時処理

function tusb_race:race_point/decentralized

# effect付与
effect give @s resistance 15 127
effect give @s glowing infinite 127 true

# item付与
give @s splash_potion{CustomPotionEffects: [{ShowParticles: 1b, Duration: 20, Id: 6b, Amplifier: 29b}], display:{Name: '{"text":"§8ロスト・オブ・ライブズ(絶対的即死)"}'}} 1
give @s tipped_arrow{CustomPotionEffects: [{ShowParticles: 1b, Duration: 20, Id: 6b, Amplifier: 29b}], display:{Name: '{"text":"§8ロスト・オブ・ライブズ(絶対的即死)"}'}} 1
