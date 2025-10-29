## 为玩家添加无敌相关状态效果
# 每 tick 执行

execute as @a \
    if score @s ks-server_crea.invincible matches 1 run \
        effect give @s minecraft:regeneration 2 255 true
execute as @a \
    if score @s ks-server_crea.invincible matches 1 run \
        effect give @s minecraft:saturation 2 255 true
execute as @a \
    if score @s ks-server_crea.invincible matches 1 run \
        effect give @s minecraft:resistance 2 255 true

scoreboard players enable @a ks-server_crea.invincible
execute as @a \
    unless score @s ks-server_crea.invincible matches 0..1 run \
        scoreboard players set @s ks-server_crea.invincible 0