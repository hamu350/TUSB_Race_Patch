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
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:0} in minecraft:overworld run tp @s 0 4 2
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:1} in minecraft:overworld run tp @s 4 33 -168
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:2} in minecraft:overworld run tp @s 246 197 -130
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:3} in minecraft:overworld run tp @s 1049 4 34
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:4} in minecraft:overworld run tp @s 136 117 698
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:5} in minecraft:overworld run tp @s 24 18 -1827
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:6} in minecraft:the_nether run tp @s 0 26 20
execute if data storage tusb_race: settings{start:1b} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings{spwanpoint:7} in minecraft:overworld run tp @s 1317 212 1561

clear @s
give @s minecraft:bread 16
give @s minecraft:iron_sword{Damage: 0, AttributeModifiers: [{Amount: 15.0d, Slot: "mainhand", AttributeName: "minecraft:generic.attack_damage", Operation: 0, UUID: [I; 0, 1, 0, 1], Name: "AttackPlus"}, {Amount: -3.0d, Slot: "mainhand", AttributeName: "minecraft:generic.attack_speed", Operation: 0, UUID: [I; 0, 1, 0, 2], Name: "AtkSpeedPlus"}, {Amount: 10.0d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 1, 0, 3], Name: "ArmorPlus"}], display: {Lore: ['{"text":"§r幅広い剣身で攻撃を受け止める大剣"}'], Name: '{"text":"§r§l剣士の大剣"}'}}
give @s minecraft:carrot_on_a_stick{Damage: 0, AttributeModifiers: [{Amount: 1.0d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 1, UUID: [I; 0, 1, 0, 1], Name: "SpeedPlus"}, {Amount: 0.1d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 1, UUID: [I; 0, 1, 0, 2], Name: "HealthPlus"}], display: {Lore: ['{"text":"§r美味しそうな香りを放つ"}', '{"text":"§rどこまでも走れそうに思わせる杖"}'], Name: '{"text":"§r§l召喚士のタクト"}'}}
give @s minecraft:bow{RepairCost: 1000000000, Damage: 0, display: {Name: '{"text":"§6§l梓弓"}'}, Enchantments: [{lvl: 4s, id: "minecraft:power"}, {lvl: 1s, id: "minecraft:mending"}]}
give @s minecraft:diamond_pickaxe{RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 3s, id: "minecraft:efficiency"}]}
give @s minecraft:ender_pearl 16
give @s minecraft:white_wool 64
give @s minecraft:guardian_spawn_egg{RepairCost: 1000000000, HideFlags: 16, display: {Lore: ['{"text":"§rスキルエッグ一式が入っている。"}'], Name: '{"text":"§dスキルエッグセット"}'}, Enchantments: [], EntityTag: {DeathTime: 19s, Silent: 1b, DeathLootTable: "usb:signs/skillegg", id: "minecraft:guardian", NoAI: 1b, Tags: ["RewardEgg", "TypeChecked"], ActiveEffects: [{Duration: 100, Id: 7b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}]}, CanPlaceOn: ["#minecraft:all"]} 64
give @s minecraft:elytra{Damage: 0, RepairCost: 1000000}
give @s minecraft:arrow 64
give @s minecraft:splash_potion{CustomPotionEffects: [{Duration: 200, Id: 8b, Amplifier: 49b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§6§oコレを使えば緊急時の上り下りが"}', '{"text":"§6§o非常に楽になります！"}', '{"text":"§4§o※ついでに落下死も増えます！"}', '{"text":"§0§o梯子なんていらなかったんや！"}'], Name: '{"text":"§dエレベータポーション"}'}} 3
give @s minecraft:potion{CustomPotionEffects: [{Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 3, Id: 14b, Amplifier: 5b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§dマナから作られた霊薬。"}', '{"text":"§d飲むとHPとMPが全回復する。"}', '{"text":""}', '{"text":"§7スプラッシュ化不可"}'], Name: '{"text":"§5§lラストエリクサー"}'}} 2
item replace entity @s armor.head with minecraft:diamond_helmet{RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}
item replace entity @s armor.chest with minecraft:diamond_chestplate{RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}
item replace entity @s armor.legs with minecraft:diamond_leggings{RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}
item replace entity @s armor.feet with minecraft:diamond_boots{RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}