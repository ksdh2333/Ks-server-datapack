## 为上方容器重命名自定义名称以重命名标题bossbar

data modify block ~ ~1 ~ CustomName set from \
    block ~ ~1 ~ Items.[0].components.minecraft:custom_name
function ks-server_crea:title_bossbar/rename_bossbar with \
    block ~ ~1 ~