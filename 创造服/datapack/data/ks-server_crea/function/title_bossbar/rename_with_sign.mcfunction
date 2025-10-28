## 为上方容器重命名自定义名称以重命名标题bossbar

data modify storage ks-server_crea:rename_title_bossbar title set from \
    block ~ ~1 ~ front_text.messages.[1]
data modify storage ks-server_crea:rename_title_bossbar color set from \
    block ~ ~1 ~ front_text.messages.[2]

function ks-server_crea:title_bossbar/rename_bossbar with \
    storage ks-server_crea:rename_title_bossbar