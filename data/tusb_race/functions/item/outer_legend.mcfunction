#> tusb_race:item/outer_legend

tellraw @a {"translate": "%s はアウターレジェンドを手に入れた！","with": [{"selector": "@s"}]}
tellraw @a {"translate": "%s を倒さなければ勝利されてしまう！","with": [{"selector": "@s"}]}

tag @s add OuterLegend
