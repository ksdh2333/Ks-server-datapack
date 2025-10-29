## 创建和初始化计分板

# 标题bossbar开关
scoreboard objectives add ks-server_crea.show_title_bossbar trigger "标题bossbar开关"

# 无敌效果开关
scoreboard objectives add ks-server_crea.invincible trigger "无敌效果开关"

# 生命值
scoreboard objectives add ks-server_crea.health health {"text": "生命值", "color": "dark_red"}
scoreboard objectives modify ks-server_crea.health displayautoupdate true
scoreboard objectives modify ks-server_crea.health numberformat styled {"color": "red"}
scoreboard objectives modify ks-server_crea.health rendertype hearts

scoreboard objectives setdisplay list ks-server_crea.health
scoreboard objectives setdisplay below_name ks-server_crea.health