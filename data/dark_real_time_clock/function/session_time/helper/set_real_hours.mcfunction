# Get Ticks
scoreboard players operation @s dark_real_time_clock.temp = @s dark_real_time_clock.session_time

# Get Seconds
scoreboard players operation @s dark_real_time_clock.temp /= $dark_real_time_clock.session dark_real_time_clock.temp

# Get Minutes
scoreboard players operation @s dark_real_time_clock.temp /= $dark_real_time_clock.session dark_real_time_clock.seconds

# Get Hours
scoreboard players operation @s dark_real_time_clock.temp /= $dark_real_time_clock.session dark_real_time_clock.minutes