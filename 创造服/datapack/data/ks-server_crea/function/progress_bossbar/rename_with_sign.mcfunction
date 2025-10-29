## 为上方容器重命名自定义名称以重命名项目bossbar

data modify storage ks-server_crea:progress_bossbar name set from \
    block ~ ~1 ~ front_text.messages.[1]

function ks-server_crea:progress_bossbar/rename_bossbar with \
    storage ks-server_crea:progress_bossbar