## 为上方容器重命名自定义名称以发送消息

data modify storage ks-server_crea:send_message message set from \
    block ~ ~1 ~ front_text.messages.[1]
data modify storage ks-server_crea:send_message color set from \
    block ~ ~1 ~ front_text.messages.[2]

function ks-server_crea:send_message/send_message with \
    storage ks-server_crea:send_message