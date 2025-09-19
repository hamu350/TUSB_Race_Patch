#> tusb_remake:login/first
# 初回ログイン時にだけする処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 最初は通常世界にいることにする -> 最初にクラウディアに出てくると、タイトルが表示される
scoreboard players add @s USBDimension 0
### 空腹関係の何かのトリガー
scoreboard players set @s Hunger -1

### 初回ログイン時の設定
function tusb_remake:login/first_reset

team join FriendlyTeam @s

tag @s add Resolved

# 追加： レースポイント初期設定
scoreboard players set @s RacePoint 50

# 追加： 個人スポーンポイントの初期設定
function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tusb_race.settings.spwanpoint set value 0

# 追加： tellraw
tellraw @s {"translate": "TUSB_RPへようこそ！","color": "gold"}
tellraw @s {"translate": "職業島でスタートボタンを押すと、ゲームが開始されます。"}
tellraw @s {"translate": "島攻略や相手プレイヤーが倒れると得られるレースポイントを一番多く集めた人が勝利となります。"}
tellraw @s {"translate": "ゲーム開始後、クラウディア村人像前にてゲームを終了することができます。"}
tellraw @s {"translate": "※MPが経験値バーになりました。サイドバーにはポイントが表示されます。","color": "green"}
tellraw @s {"translate": "-----------------------------------------------------"}
tellraw @s {"translate": "ポイント変動条件","bold":true}
tellraw @s {"translate": "通常世界島攻略+5 別ディメンション+10 死亡->他プレイヤーの数×-3,他プレイヤーに+3"}

effect give @s glowing infinite 127

tag @s add Enemy
