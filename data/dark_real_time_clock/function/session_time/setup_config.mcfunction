# Store tick rate
execute unless score $dark_real_time_clock.session dark_real_time_clock.temp matches 1.. store result score $dark_real_time_clock.session dark_real_time_clock.temp run function dark_real_time_clock:session_time/helper/get_tick_rate

# Represents second to minute and minute to hour rates
execute unless score $dark_real_time_clock.session dark_real_time_clock.seconds matches 1.. run scoreboard players set $dark_real_time_clock.session dark_real_time_clock.seconds 60
execute unless score $dark_real_time_clock.session dark_real_time_clock.minutes matches 1.. run scoreboard players set $dark_real_time_clock.session dark_real_time_clock.minutes 60

# Represents hours until player is set to AFK
execute unless score $dark_real_time_clock.session dark_real_time_clock.hours matches 1.. run scoreboard players set $dark_real_time_clock.session dark_real_time_clock.hours 6

# Represents hours until players should receive messages suggesting taking a break
execute unless score $dark_real_time_clock.session dark_real_time_clock.days matches 1.. run scoreboard players set $dark_real_time_clock.session dark_real_time_clock.days 4