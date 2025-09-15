#> tusb_race:start_set/5
#
#

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings.spwanpoint set value 5

tellraw @a [{"translate":"%1$sは","color":"white","with": [{"selector":"@s"}]},{"translate":"テーブルマウンテン","color":"green"},{"translate":"をスタート地点にした","color":"white"}]
