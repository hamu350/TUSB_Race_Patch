#> tusb_race:player/death/
#
# 死亡時処理

# スコア分散
function tusb_race:race_point/decentralized

# 無敵付与
effect give @s resistance 10 127

# 死亡報酬
function tusb_race:player/death/reward

# tellraw
tellraw @s {"translate": "ポイント変動条件","bold":true}
tellraw @s {"translate": "通常世界島攻略+5 別ディメンション+10 死亡->他プレイヤーの数×-3,他プレイヤーに+3"}
