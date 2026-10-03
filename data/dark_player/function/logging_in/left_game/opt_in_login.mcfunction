# Check for login bonus
function dark_economy:money/login_bonus/check

# TODO: Disable AFK


# TODO: Set Town Status as active


# Set Current Days and Weeks
scoreboard players operation @s dark_real_time_clock.days = $dark_real_time_clock.clock dark_real_time_clock.days
scoreboard players operation @s dark_real_time_clock.weeks = $dark_real_time_clock.clock dark_real_time_clock.weeks