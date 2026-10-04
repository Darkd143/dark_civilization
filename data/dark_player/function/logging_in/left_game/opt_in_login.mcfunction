# Check for login bonus
function dark_economy:money/login_bonus/check

# Disable AFK
execute if function dark_player:afk/helper/is_afk run function dark_player:afk/helper/remove_afk
function dark_player:afk/coords/set_macro {type:"last"}

# TODO: Set Town Status as active


# Set Current Days and Weeks
scoreboard players operation @s dark_real_time_clock.days = $dark_real_time_clock.clock dark_real_time_clock.days
scoreboard players operation @s dark_real_time_clock.weeks = $dark_real_time_clock.clock dark_real_time_clock.weeks