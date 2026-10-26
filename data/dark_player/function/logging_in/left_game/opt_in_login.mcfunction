# Check for login bonus
function dark_economy:money/login_bonus/check

# Disable AFK
execute if function dark_player:afk/helper/is_afk run function dark_player:afk/helper/remove_afk
function dark_player:afk/coords/set_macro {type:"last"}

# Announce all AFK players
execute if entity @p[tag=dark_player.afk] run function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Player",message:"{text:'Players Currently AFK: ',color:'white'},{selector:'@a[tag=dark_player.afk]',color:'white'}"}

# TODO: Refresh town situation and reset active player timer
execute if score @s dark_civilization.town_core_id matches 1.. run function dark_civilization:town_core/manage/log_in_refresh/main

# Set Current Days and Weeks
scoreboard players operation @s dark_real_time_clock.days = $dark_real_time_clock.clock dark_real_time_clock.days
scoreboard players operation @s dark_real_time_clock.weeks = $dark_real_time_clock.clock dark_real_time_clock.weeks