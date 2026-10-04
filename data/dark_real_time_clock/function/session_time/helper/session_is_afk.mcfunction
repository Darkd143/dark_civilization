# Get Ticks
scoreboard players operation @s dark_real_time_clock.temp = @s dark_real_time_clock.session_time

# Get Seconds
scoreboard players operation @s dark_real_time_clock.temp /= $dark_real_time_clock.session dark_real_time_clock.temp

# Get Minutes
scoreboard players operation @s dark_real_time_clock.temp /= $dark_real_time_clock.session dark_real_time_clock.seconds

# Get Hours
scoreboard players operation @s dark_real_time_clock.temp /= $dark_real_time_clock.session dark_real_time_clock.minutes

# Check if hour count exceeds or equals setting
execute if score @s dark_real_time_clock.temp >= $dark_real_time_clock.session dark_real_time_clock.hours run return run scoreboard players reset @s dark_real_time_clock.temp
return 0