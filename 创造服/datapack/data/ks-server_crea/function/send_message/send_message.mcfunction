## 发送消息, 消息来自传入的容器的自定义名称

$title @a title \
    ["", \
    {"text": "[", "color": "gray"}, \
    {"text": "信息", "color": "yellow"}, \
    {"text": "] ", "color": "gray"}, \
    {"text": $(CustomName)}]
$tellraw @a \
    ["", \
    {"text": "[", "color": "gray"}, \
    {"text": "信息", "color": "yellow"}, \
    {"text": "] ", "color": "gray"}, \
    {"text": $(CustomName)}]

playsound minecraft:entity.arrow.hit_player master @a ~ -256 ~ 0.01 1 1