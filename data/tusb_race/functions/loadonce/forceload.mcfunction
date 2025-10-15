#> tusb_race:marker_summon
#
# スタートマーカー設置

# 初期地点
# 船島のBar
# 隠里フレーム近く
# 地下世界の山入り口
# ガリバーランド雪山頂上
# テーブルマウンテン：スタート地点
# ネザー：ネザーアスレ入口
# トカルトコルデ：スタート地点

### スタート地点

# 初期地点
execute in minecraft:overworld positioned 0 4 2 run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned 0 4 2 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:0}}

# 船島のBar
execute in minecraft:overworld positioned 4 33 -168 run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned 4 33 -168 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:1}}

# 隠里フレーム近く
execute in minecraft:overworld positioned 246 197 -130 run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned 246 197 -130 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:2}}

# 地下世界の山入り口
execute in minecraft:overworld positioned 1049 4 34 run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned 1049 4 34 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:3}}

# ガリバーランド雪山頂上
execute in minecraft:overworld positioned 136 117 698 run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned 136 117 698 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:4}}

# テーブルマウンテン：スタート地点
execute in minecraft:overworld positioned 24 18 -1827 run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned 24 18 -1827 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:5}}

# ネザー：ネザーアスレ入口
execute in minecraft:the_nether positioned 0 26 20 run forceload add ~ ~ ~ ~
execute in minecraft:the_nether positioned 0 26 20 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:6}}

# トカルトコルデ：スタート地点
execute in minecraft:overworld positioned 1317 212 1561 run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned 1317 212 1561 run summon marker ~ ~ ~ {Tags:["StartPoint","SystemEntity"],data:{start:7}}


### フレーム位置

# 地下世界：山奥地
execute in minecraft:overworld positioned 1090 39 28 run forceload add ~ ~ ~ ~

# クラウディア：虹の城
execute in minecraft:overworld positioned -2097 144 -275 run forceload add ~ ~ ~ ~

# クラウディア：ビーコン島
execute in minecraft:overworld positioned -2228 188 -164 run forceload add ~ ~ ~ ~

# クラウディア：クラウディア城
execute in minecraft:overworld positioned -2323 87 -131 run forceload add ~ ~ ~ ~

# テーブルマウンテン：地下水路の村
execute in minecraft:overworld positioned 49 55 -2199 run forceload add ~ ~ ~ ~

# テーブルマウンテン：幸福街
execute in minecraft:overworld positioned 11 115 -2229 run forceload add ~ ~ ~ ~

# テーブルマウンテン：裏幸福街
execute in minecraft:overworld positioned 41 118 -2193 run forceload add ~ ~ ~ ~

# 通常世界：廃病院上層
execute in minecraft:overworld positioned -136 201 -25 run forceload add ~ ~ ~ ~

# トカルトコルデ：アンデス基地
execute in minecraft:overworld positioned 1803 94 1305 run forceload add ~ ~ ~ ~

# トカルトコルデ：ベント蟻塚
execute in minecraft:overworld positioned 1997 165 1528 run forceload add ~ ~ ~ ~

# トカルトコルデ：螺旋の塔
execute in minecraft:overworld positioned 2217 208 1880 run forceload add ~ ~ ~ ~

# トカルトコルデ：採掘場下層
execute in minecraft:overworld positioned 2486 96 1443 run forceload add ~ ~ ~ ~

# トカルトコルデ：まいみかハウス
execute in minecraft:overworld positioned 1941 111 2919 run forceload add ~ ~ ~ ~

# トカルトコルデ：コマブロ遺跡
execute in minecraft:overworld positioned 1549 88 1333 run forceload add ~ ~ ~ ~

# エンド：奈落地帯
execute in minecraft:the_end positioned -236 62 12 run forceload add ~ ~ ~ ~

# エンド：大門前
execute in minecraft:the_end positioned -1143 65 12 run forceload add ~ ~ ~ ~

# エンド：地獄部屋
execute in minecraft:the_end positioned -1377 155 9 run forceload add ~ ~ ~ ~

# エンド：深淵の間
execute in minecraft:the_end run forceload add -1384 8 -1386 10

# ネザーアスレ出口変更
execute in minecraft:the_nether positioned -258 32 878 run forceload add ~ ~ ~ ~2

# コマブロ設置のためのロード
execute in minecraft:overworld positioned -1756 113 -137 run forceload add ~ ~
execute in minecraft:overworld positioned -1905 112 -136 run forceload add ~ ~
execute in minecraft:overworld run forceload add -1790 -140 -1777 -133

schedule function tusb_race:loadonce/place 1t
