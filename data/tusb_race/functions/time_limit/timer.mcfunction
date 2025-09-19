#> tusb_race:time_limit/timer

# 多分減らす前に取得しておけば1tick前の時間が取れる
execute if score Time Timer matches 1.. if data storage tusb_race: settings{start:1b} run scoreboard players operation BeforeTime Timer = Time Timer

# tickごとにtimerを減らす
execute if score Time Timer matches 1.. if data storage tusb_race: settings{start:1b} run scoreboard players remove Time Timer 1

# max値を直接addできないのでスコアボードにいちいち保存して代入しないといけない
execute store result bossbar tusb_race:timer max run scoreboard players get Max_Time Timer
# こっちは別に代入できるけどみやすさのためにスコア使ってる(別だと変だよねうん。)
execute store result bossbar tusb_race:timer value run scoreboard players get Time Timer

# h,m,sを代入するゾーン
# hourの代入
scoreboard players operation Time Timer /= $Time_to_Hour Timer
scoreboard players operation Hour Hour = Time Timer
# TimerがHourになっちゃってるんで戻しまーーーーす
execute store result score Time Timer run bossbar get tusb_race:timer value
# minの代入
scoreboard players operation Time Timer %= $Time_to_Hour Timer
execute store result score Min Min run scoreboard players operation Time Timer /= $Time_to_Min Timer
# TimerがMinになっちゃってるんで戻しまーーーーす
execute store result score Time Timer run bossbar get tusb_race:timer value
# secの代入
scoreboard players operation Time Timer %= $Time_to_Hour Timer
scoreboard players operation Time Timer %= $Time_to_Min Timer
execute store result score Sec Sec run scoreboard players operation Time Timer /= $Time_to_Sec Timer
# TimerがSecになっちゃってるんで戻しまーーーーす
execute store result score Time Timer run bossbar get tusb_race:timer value
# これで元通り。


# 経過時間をhになおす
# ここのstoreの形を変えて、hが変わったかどうかを見れるようにする。

# spend time(h)のあとにspend hourを計算することで、ここのタイミングで前のtickと今のtickとの時間の違いを整合させる


# スコアリセット
# ここのリセット若干諸説ある。計算先でもスコアを使ってるんで、使っちゃうとあれー？って感じ
# 多分無駄
# scoreboard players reset $Temp Spend_Time


# 10~カウントダウンする
execute if data storage tusb_race: settings{start:1b} if score Time Timer matches 0..10 run function tusb_race:time_limit/count_down