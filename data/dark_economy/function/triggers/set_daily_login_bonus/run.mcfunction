execute unless function dark_player:permissions/has_dp_op run return run function dark_economy:triggers/set_daily_login_bonus/permission_denied

# set value
execute if score @s dark_economy.set_daily_login_bonus matches 1.. store result storage dark_economy.config login_bonus.daily int 1 run scoreboard players get @s dark_economy.set_daily_login_bonus

# display dialog
execute if score @s dark_economy.set_daily_login_bonus matches -1 run function dark_economy:triggers/set_daily_login_bonus/display/main
execute unless score @s dark_economy.set_daily_login_bonus matches -1 run function dark_economy:triggers/manage_login_bonus_menu/display/main

# reset trigger
function dark_economy:triggers/set_daily_login_bonus/enable