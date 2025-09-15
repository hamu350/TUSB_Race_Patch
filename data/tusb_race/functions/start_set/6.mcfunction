#> tusb_race:start_set/6
#
#

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings.spwanpoint set value 6

tellraw @a [{"translate":"%1$sは","color":"white","with": [{"selector":"@s"}]},{"translate":"ネザーアスレ入口","color":"green"},{"translate":"をスタート地点にした","color":"white"}]
