#> no_sleep:respawn/revert_gamemode
# ゲームモードを元に戻します
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### スケジュールから呼ばれる可能性もあるので、念のためもう一度個別ストレージを呼び出す
function #oh_my_dat:please
data modify storage no_sleep: gamemode set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.gamemode

execute if data storage no_sleep: {gamemode:"survival"} run gamemode survival @s
execute if data storage no_sleep: {gamemode:"creative"} run gamemode creative @s
execute if data storage no_sleep: {gamemode:"adventure"} run gamemode adventure @s
execute if data storage no_sleep: {gamemode:"spectator"} run gamemode spectator @s

# 追加： 死亡処理
effect give @s glowing infinite 127

function tusb_race:player/mp_bar/set

# 追加： ゲームスタートしていて死亡したら専用処理
execute if data storage tusb_race: settings{start:1b} run function tusb_race:player/death/
