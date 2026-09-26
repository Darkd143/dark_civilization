# setup flags
execute unless score $dark_real_time_clock.config dark_real_time_clock.increment matches 0..1 run scoreboard players set $dark_real_time_clock.config dark_real_time_clock.increment 0

execute unless score $dark_real_time_clock.config dark_real_time_clock.display matches 0..3 run scoreboard players set $dark_real_time_clock.config dark_real_time_clock.display 0

# setup rates

execute unless score $dark_real_time_clock.config dark_real_time_clock.hours matches 1.. run scoreboard players set $dark_real_time_clock.config dark_real_time_clock.hours 24

execute unless score $dark_real_time_clock.config dark_real_time_clock.days matches 1.. run scoreboard players set $dark_real_time_clock.config dark_real_time_clock.days 7

# setup counters

execute unless score $dark_real_time_clock.clock dark_real_time_clock.seconds matches 0.. run scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.seconds 0

execute unless score $dark_real_time_clock.clock dark_real_time_clock.minutes matches 0.. run scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.minutes 0

execute unless score $dark_real_time_clock.clock dark_real_time_clock.hours matches 0.. run scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.hours 0

execute unless score $dark_real_time_clock.clock dark_real_time_clock.days matches 0.. run scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.days 0

execute unless score $dark_real_time_clock.clock dark_real_time_clock.weeks matches 0.. run scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.weeks 0

# setup events

execute unless score $dark_real_time_clock.events dark_real_time_clock.hours matches 0..1 run scoreboard players set $dark_real_time_clock.events dark_real_time_clock.hours 1

execute unless score $dark_real_time_clock.events dark_real_time_clock.days matches 0..1 run scoreboard players set $dark_real_time_clock.events dark_real_time_clock.days 1

execute unless score $dark_real_time_clock.events dark_real_time_clock.weeks matches 0..1 run scoreboard players set $dark_real_time_clock.events dark_real_time_clock.weeks 1
