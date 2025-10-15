#> tusb_race:loadonce/frame_set
#
# 追加エンドポータルフレーム

execute in minecraft:overworld positioned 1090 39 28 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned -2097 144 -275 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned -2228 188 -164 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned -2323 87 -131 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 49 55 -2199 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 11 115 -2229 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 41 118 -2193 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned -136 201 -25 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 1803 94 1305 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 1997 165 1528 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 2217 208 1880 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 2486 96 1443 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 1941 111 2919 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:overworld positioned 1549 88 1333 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:the_end positioned -236 62 12 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:the_end positioned -1143 65 12 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:the_end positioned -1377 155 9 run setblock ~ ~ ~ end_portal_frame replace
execute in minecraft:the_end run fill -1384 198 8 -1386 199 10 minecraft:cobweb replace
execute in minecraft:the_end run fill -1384 198 8 -1386 199 10 minecraft:cobweb replace
execute in minecraft:the_end run setblock -1385 198 9 end_portal_frame replace

# ネザーアスレ：出口変更
execute in minecraft:the_nether positioned -258 32 878 run fill ~ ~ ~ ~ ~ ~2 end_gateway{ExactTeleport: 1b, ExitPortal: {X:0,Y:25,Z:20}, id: "minecraft:end_gateway", Age: 3133413L}

# スタートに岩盤設置
execute in minecraft:overworld as @e[type=marker,tag=StartPoint] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 bedrock replace
execute in minecraft:the_nether as @e[type=marker,tag=StartPoint] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 bedrock replace

# 読み込み解除
execute in minecraft:overworld positioned 0 4 2 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 4 33 -168 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 246 197 -130 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 1049 4 34 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 136 117 698 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 24 18 -1827 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 1549 88 1333 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 1317 212 1561 run forceload remove ~ ~ ~ ~

# 読み込み解除
execute in minecraft:overworld positioned 1090 39 28 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned -2097 144 -275 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned -2228 188 -164 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned -2323 87 -131 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 49 55 -2199 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 11 115 -2229 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 41 118 -2193 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned -136 201 -25 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 1803 94 1305 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 1997 165 1528 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 2217 208 1880 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 2486 96 1443 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 1941 111 2919 run forceload remove ~ ~ ~ ~
execute in minecraft:overworld positioned 1549 88 1333 run forceload remove ~ ~ ~ ~
execute in minecraft:the_end positioned -236 62 12 run forceload remove ~ ~ ~ ~
execute in minecraft:the_end positioned -1143 65 12 run forceload remove ~ ~ ~ ~
execute in minecraft:the_end positioned -1377 155 9 run forceload remove ~ ~ ~ ~
execute in minecraft:the_end run forceload remove -1384 8 -1386 10
# いろいろ設置
execute in minecraft:overworld positioned -1756 114 -137 run setblock ~ ~ ~ oak_button[face=floor,facing=east]
execute in minecraft:overworld positioned -1756 113 -137 run setblock ~ ~ ~ command_block[facing=up]{powered:0b,auto:0b,Command:"function tusb_race:start"} replace
execute in minecraft:overworld positioned -1757 114 -137 run setblock ~ ~ ~ oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"text":"\\u30dc\\u30bf\\u30f3\\u3092\\u62bc\\u3059\\u3068","color":"white"}',Text3:'{"text":"\\u30b9\\u30bf\\u30fc\\u30c8\\u3067\\u3059","color":"white"}'} replace
execute in minecraft:overworld positioned -1756 113 -137 run forceload remove ~ ~

execute in minecraft:overworld positioned -1905 113 -136 run setblock ~ ~ ~ oak_button[face=floor,facing=east]
execute in minecraft:overworld positioned -1905 112 -136 run setblock ~ ~ ~ command_block[facing=up]{powered:0b,auto:0b,Command:"function tusb_race:end"} replace
execute in minecraft:overworld positioned -1906 112 -136 run setblock ~ ~ ~ oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"text":"\\u30dc\\u30bf\\u30f3\\u3092\\u62bc\\u3059\\u3068","color":"white"}',Text3:'{"text":"\\u7d42\\u4e86\\u3067\\u3059","color":"white"}'} replace
execute in minecraft:overworld positioned -1905 112 -136 run forceload remove ~ ~

execute in minecraft:overworld positioned -1790 113 -140 run place template tusb_race:start_set_command_block
execute in minecraft:overworld run forceload remove -1790 -140 -1777 -133
