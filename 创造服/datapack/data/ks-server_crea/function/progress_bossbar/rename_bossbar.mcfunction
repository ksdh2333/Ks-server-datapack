## 重命名项目bossbar

$bossbar set ks-server_crea:progress name \
    ["主要工程: ", \
    {"text": $(name), "color": "aqua"}, \
    " 进度: ", \
    {"text": $(progress), "color": "aqua"}]
playsound minecraft:entity.arrow.hit_player master @a ~ -256 ~ 0.01 1 1