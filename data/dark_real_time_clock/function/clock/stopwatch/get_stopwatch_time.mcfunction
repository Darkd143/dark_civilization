# Seconds
execute store result score $dark_real_time_clock.clock dark_real_time_clock.seconds run stopwatch query dark_hour_stopwatch 1

# Minutes
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.temp 60
scoreboard players operation $dark_real_time_clock.clock dark_real_time_clock.minutes = $dark_real_time_clock.clock dark_real_time_clock.seconds
scoreboard players operation $dark_real_time_clock.clock dark_real_time_clock.minutes /= $dark_real_time_clock.clock dark_real_time_clock.temp

# Finish Seconds
scoreboard players operation $dark_real_time_clock.clock dark_real_time_clock.seconds %= $dark_real_time_clock.clock dark_real_time_clock.temp

# Hours
scoreboard players operation $dark_real_time_clock.clock dark_real_time_clock.hours = $dark_real_time_clock.clock dark_real_time_clock.minutes
scoreboard players operation $dark_real_time_clock.clock dark_real_time_clock.hours /= $dark_real_time_clock.clock dark_real_time_clock.temp

# Finish Minutes
scoreboard players operation $dark_real_time_clock.clock dark_real_time_clock.minutes %= $dark_real_time_clock.clock dark_real_time_clock.temp