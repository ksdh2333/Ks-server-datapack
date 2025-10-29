## 为玩家显示项目bossbar
# 每 tick 执行

bossbar set ks-server_crea:progress players \
    @a[scores={ks-server_crea.show_title_bossbar=1}]

scoreboard players enable @a ks-server_crea.show_title_bossbar
execute as @a \
    unless score @s ks-server_crea.show_title_bossbar matches 1..2 run \
        scoreboard players set @s ks-server_crea.show_title_bossbar 1