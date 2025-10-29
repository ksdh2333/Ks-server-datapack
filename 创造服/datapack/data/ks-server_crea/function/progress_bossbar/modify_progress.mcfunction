## 修改进度

$data modify storage ks-server_crea:progress_bossbar progress set value '$(progress)'
$bossbar set ks-server_crea:progress value $(progress_num)
function ks-server_crea:progress_bossbar/rename_bossbar with \
    storage ks-server_crea:progress_bossbar