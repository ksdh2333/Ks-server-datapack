// 将假人加入假人队伍

// 存储玩家原本队伍的变量
global_original_teams = {};
// 玩家上线时:
__on_player_connects(player) -> (
    // 获取玩家种类和玩家名
    player_type = player ~ 'player_type';
    player_name = player ~ 'name';

    if(
    // 假人进入 ks-server_crea.fake_player 队伍, 其中 player_type 为 shadow 的玩家是 player <player> shadow 指令召唤的影子假人
    player_type == 'fake' || player_type == 'shadow',
        handle_fake_player(player, player_name, 'ks-server_crea.fake_player');
    );
);

// 玩家下线时:
__on_player_disconnects(player, reason) -> (
    // 获取玩家种类和玩家名
    player_type = player ~ 'player_type';
    player_name = player ~ 'name';

    if(
    // 假人恢复原本的队伍
    player_type == 'fake' || player_type == 'shadow',
        restore_team(player, player_name);
    );
);

// 假人处理函数
handle_fake_player(player, player_name, target_team) -> (
    // 获取玩家当前队伍
    current_team = player ~ 'team';
    // 保存当前队伍
    global_original_teams:player_name = current_team;
    
    // 将玩家添加到目标队伍
    team_add(target_team, player);
    print(player_name + '被添加进' + target_team)
);

// 恢复原本队伍函数:
restore_team(player, player_name) -> (
    // 获取原本的队伍
    original_team = global_original_teams:player_name;
    // 删除保存的队伍
    delete(global_original_teams, player_name);

    if(
    // 原本不在任何队伍中:
    original_team == null,
        // 离开队伍
        team_leave(player)
    ,
        // 回到原本的队伍中
        team_add(original_team, player);
    );
);