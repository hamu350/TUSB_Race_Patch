#> tusb_race:start_set/1
#
#

function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings.spwanpoint set value 1

tellraw @a [{"translate":"%1$sは","color":"white","with": [{"selector":"@s"}]},{"translate":"船島のBar","color":"green"},{"translate":"をスタート地点にした","color":"white"}]
