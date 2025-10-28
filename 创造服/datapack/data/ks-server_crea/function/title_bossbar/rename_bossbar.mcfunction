## 重命名标题bossbar

$bossbar set ks-server_crea:title name \
    {"text": $(CustomName), "color": "aqua", "bold": true}

$tellraw @a \
    ["", \
    {"text": "[", "color": "gray"}, \
    {"text": "Server", "color": "gold"}, \
    {"text": "] ", "color": "gray"}, \
    {"text": "标题 bossbar 修改为"}, \
    {"text": $(CustomName), "color": "aqua", "bold": true}]
playsound minecraft:entity.arrow.hit_player master @a ~ -256 ~ 0.01 1 1