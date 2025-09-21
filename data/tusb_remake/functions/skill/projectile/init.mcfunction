#> tusb_remake:skill/projectile/init

summon area_effect_cloud ~ ~ ~ {Tags:["ProjectileHitCheck"],Duration:2147483647}
data modify entity @e[tag=ProjectileHitCheck,limit=1,sort=nearest] Owner set from entity @s UUID
ride @e[tag=ProjectileHitCheck,limit=1,sort=nearest] mount @e[tag=Projectile,limit=1,sort=nearest]
