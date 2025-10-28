## 为上方容器重命名自定义名称以发送消息

data modify block ~ ~1 ~ CustomName set from \
    block ~ ~1 ~ Items.[0].components.minecraft:custom_name
function ks-server_crea:send_message/send_message with \
    block ~ ~1 ~