#> tusb_race:start
#
# スタートの合図

# スタートしたフラグ立て
data modify storage tusb_race: settings.start set value 1b

# tellraw
title @a title {"translate": "TUSB_Race開始！！！","color": "gold","bold": true}

execute as @a at @s run function tusb_remake:brazil/warp

tellraw @s {"translate": "島攻略や相手プレイヤーが倒れると得られるレースポイントを一番多く集めた人が勝利となります。"}
tellraw @s {"translate": "ゲーム開始後、クラウディア村人像前にてゲームを終了することができます。"}
tellraw @s {"translate": "※MPが経験値バーになりました。サイドバーにはポイントが表示されます。","color": "green"}
tellraw @s {"translate": "-----------------------------------------------------"}
tellraw @s {"translate": "ポイント変動条件","bold":true}
tellraw @s {"translate": "通常世界島攻略+5 別ディメンション+10 死亡->他プレイヤーの数×-3,他プレイヤーに+3"}