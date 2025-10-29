## 创建队伍

# 假人队伍(假人队伍自动加入由"scripts/ks-server-crea_fake_player_team.sc" scarpet 脚本控制)
team add ks-server_crea.fake_player "假人"
team modify ks-server_crea.fake_player collisionRule never
team modify ks-server_crea.fake_player color yellow
team modify ks-server_crea.fake_player prefix \
    ["", \
    {"text": "[", "color": "gray"}, \
    {"text": "假人", "color": "yellow"}, \
    {"text": "]", "color": "gray"}]