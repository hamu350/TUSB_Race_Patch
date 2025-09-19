#> tusb_remake:load/once
# 設定のリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard objectives add Settings dummy "設定"
### 観光モード
scoreboard players set SightseeingDeath Settings 0
### デバッグモード
scoreboard players set Debug Settings 0
### 祈り有効モード
scoreboard players set Prayable Settings 1
### 地形破壊
scoreboard players set MobGriefing Settings 1
### 難易度
scoreboard players set Difficulty Settings 0
### 攻略対象最大数
scoreboard players set MaxPortalCount Settings 67

### ワールド初期設定
time set 14000
weather rain 15
data modify storage tusb_remake: area_name set value {underworld:"???",cloudia:"???",table_mountain:"???",gullivers_land:"???",tocult_colde:"???"}
data modify storage tusb_remake: conquer.count set value {skyland:0,nether:0,end:0,underworld:0,cloudia:0,table_mountain:0,gullivers_land:0,tocult_colde:0}
data modify storage tusb_remake: nether_boss_count set value 1
data modify storage tusb_remake: nether_boss_clear set value false

### 最初は夜固定

### 基本キープインベントリあり
gamerule keepInventory true
data modify storage tusb_remake: settings.is_sightseeing set value true

### 苗木を既に入手しているかどうか
data modify storage tusb_remake: settings.saplings set value {oak:false,birch:false,spruce:false,jungle:false,acacia:false,dark_oak:false}

### ワープポータル初期化しておく
data remove storage tusb_remake: portal

### ゲームが始まった時刻を記録しておく
execute store result storage tusb_remake: start_time int 1 run time query gametime

### スキルスロットのタイトルを設定
data modify storage tusb_remake: skill_slot_titles set value {instant:{a:'[{"text":"サポートアクション","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"サポートアクション","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'},mode:{a:'[{"text":"モードスキル","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"モードスキル","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'}}

# execute in minecraft:overworld positioned -1896.000000 118.000000 -136.000000 run summon minecraft:marker ~ ~ ~ {CustomName:'"システムマーカー"',UUID:[I;0,1,0,1]}

scoreboard objectives add PlayerId dummy
scoreboard players set $Max PlayerId 1

# 追加： スタートしてない設定を追加
data modify storage tusb_race: settings.start set value 0b

# 追加： いろいろ設置
function tusb_race:loadonce/forceload

data modify storage tusb_race: settings.Items set value [{Slot: 0b, id: "minecraft:bread", Count: 16b}, {Slot: 1b, id: "minecraft:iron_sword", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Amount: 15.0d, Slot: "mainhand", AttributeName: "minecraft:generic.attack_damage", Operation: 0, UUID: [I; 0, 1, 0, 1], Name: "AttackPlus"}, {Amount: -3.0d, Slot: "mainhand", AttributeName: "minecraft:generic.attack_speed", Operation: 0, UUID: [I; 0, 1, 0, 2], Name: "AtkSpeedPlus"}, {Amount: 10.0d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 1, 0, 3], Name: "ArmorPlus"}], display: {Lore: ['{"text":"§r幅広い剣身で攻撃を受け止める大剣"}'], Name: '{"text":"§r§l剣士の大剣"}'}}}, {Slot: 2b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0, AttributeModifiers: [{Amount: 1.0d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 1, UUID: [I; 0, 1, 0, 1], Name: "SpeedPlus"}, {Amount: 0.1d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 1, UUID: [I; 0, 1, 0, 2], Name: "HealthPlus"}], display: {Lore: ['{"text":"§r美味しそうな香りを放つ"}', '{"text":"§rどこまでも走れそうに思わせる杖"}'], Name: '{"text":"§r§l召喚士のタクト"}'}}}, {Slot: 3b, id: "minecraft:diamond_pickaxe", Count: 1b, tag: {RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 3s, id: "minecraft:efficiency"}]}}, {Slot: 4b, id: "minecraft:bow", Count: 1b, tag: {RepairCost: 1000000000, Damage: 0, display: {Name: '{"text":"§6§l梓弓"}'}, Enchantments: [{lvl: 4s, id: "minecraft:power"}, {lvl: 1s, id: "minecraft:mending"}]}}, {Slot: 5b, id: "minecraft:ender_pearl", Count: 16b}, {Slot: 6b, id: "minecraft:white_wool", Count: 64b}, {Slot: 7b, id: "minecraft:guardian_spawn_egg", Count: 64b, tag: {RepairCost: 1000000000, HideFlags: 16, display: {Lore: ['{"text":"§rスキルエッグ一式が入っている。"}'], Name: '{"text":"§dスキルエッグセット"}'}, Enchantments: [], EntityTag: {DeathTime: 19s, Silent: 1b, DeathLootTable: "usb:signs/skillegg", id: "minecraft:guardian", NoAI: 1b, Tags: ["RewardEgg", "TypeChecked"], ActiveEffects: [{Duration: 100, Id: 7b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}]}, CanPlaceOn: ["#minecraft:all"]}}, {Slot: 8b, id: "minecraft:elytra", Count: 1b, tag: {Damage: 0, RepairCost: 1000000}}, {Slot: 9b, id: "minecraft:arrow", Count: 64b}, {Slot: 10b, id: "minecraft:splash_potion", Count: 9b, tag: {CustomPotionEffects: [{Duration: 200, Id: 8b, Amplifier: 49b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§6§oコレを使えば緊急時の上り下りが"}', '{"text":"§6§o非常に楽になります！"}', '{"text":"§4§o※ついでに落下死も増えます！"}', '{"text":"§0§o梯子なんていらなかったんや！"}'], Name: '{"text":"§dエレベータポーション"}'}}}, {Slot: 11b, id: "minecraft:potion", Count: 3b, tag: {CustomPotionEffects: [{Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 3, Id: 14b, Amplifier: 5b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§dマナから作られた霊薬。"}', '{"text":"§d飲むとHPとMPが全回復する。"}', '{"text":""}', '{"text":"§7スプラッシュ化不可"}'], Name: '{"text":"§5§lラストエリクサー"}'}}}, {Slot: 100b, id: "minecraft:diamond_boots", Count: 1b, tag: {RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}}, {Slot: 101b, id: "minecraft:diamond_leggings", Count: 1b, tag: {RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}}, {Slot: 102b, id: "minecraft:diamond_chestplate", Count: 1b, tag: {RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}}, {Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {RepairCost: 1000000, Damage: 0, Enchantments: [{lvl: 2s, id: "minecraft:protection"}]}}]

# timer用スコアボード
# timeってスコアに統合してそれ以外の名前をscoreholderにしてもいいんじゃないかなって
scoreboard objectives add Timer dummy
scoreboard objectives add Sec dummy
scoreboard objectives add Min dummy
scoreboard objectives add Hour dummy

# s,m,hをtickで割るときの値(scoreboard operation)
scoreboard players set $Time_to_Sec Timer 20
scoreboard players set $Time_to_Min Timer 1200
scoreboard players set $Time_to_Hour Timer 72000
scoreboard players set Time Timer 72000

scoreboard players set Time Timer 360000
scoreboard players set Max_Time Timer 360000

# タイマー用ボスバーどーん
bossbar add tusb_race:timer ""
bossbar set tusb_race:timer visible true
bossbar set tusb_race:timer style notched_10
