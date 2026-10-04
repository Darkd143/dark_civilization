# set up storage
data merge storage dialog_temp {title:"Dark Economy - Dark Login Bonus Manager","exit_action":{"label":"Back","tooltip":"back to operator menu","action":{"type": "minecraft:run_command","command": "/trigger dark_player.op_menu"}},columns:1,actions:[]}

# set up actions
execute store result storage temp initial_login_bonus int 1 run data get storage dark_economy.config login_bonus.initial
execute store result storage temp weekly_login_bonus int 1 run data get storage dark_economy.config login_bonus.weekly
execute store result storage temp daily_login_bonus int 1 run data get storage dark_economy.config login_bonus.daily

function dark_economy:triggers/manage_login_bonus_menu/display/determine_actions with storage temp

data remove storage temp initial_login_bonus
data remove storage temp weekly_login_bonus
data remove storage temp daily_login_bonus

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns