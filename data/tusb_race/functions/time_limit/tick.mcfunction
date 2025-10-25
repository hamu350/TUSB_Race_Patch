#> tusb_race:time_limit/tick
# tickで実行するコマンドを全部格納してるmcfunction

# 時間が動き出す
# 止まってる時に動いてたらしいが、どうなってるんだ
function tusb_race:time_limit/timer

# # ボスバー色チェン
# function tusb_race:time_limit/bossbar_color

# ボスバーの名前変えます
function tusb_race:time_limit/bossbar_name_change

# テスト用
# 死んでもなお検知するのかどうか
# inが必須

# 死ぬ前はおばわでも出てなかったのに死んだ後はずっとhiいってる、、、なんでや
# execute as @a in the_nether if predicate time_limit:boss run say hi

# 本来ならrejoinedしてtimer表示させたいけど現状はボスのHPをボスバーで出さないから毎秒表示でええや
bossbar set tusb_race:timer players @a
