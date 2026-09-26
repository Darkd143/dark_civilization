# increment ticks
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.ticks 1
execute if score $dark_real_time_clock.clock dark_real_time_clock.ticks < $dark_real_time_clock.config dark_real_time_clock.ticks run return 1

# increment seconds
execute if score $dark_real_time_clock.events dark_real_time_clock.seconds matches 1 run function dark_real_time_clock:clock/events/second
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.ticks 0
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.seconds 1
execute if score $dark_real_time_clock.clock dark_real_time_clock.seconds < $dark_real_time_clock.config dark_real_time_clock.seconds run return 1

# increment minutes
execute if score $dark_real_time_clock.events dark_real_time_clock.minutes matches 1 run function dark_real_time_clock:clock/events/minute
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.seconds 0
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.minutes 1
execute if score $dark_real_time_clock.clock dark_real_time_clock.minutes < $dark_real_time_clock.config dark_real_time_clock.minutes run return 1

# increment hours
execute if score $dark_real_time_clock.events dark_real_time_clock.hours matches 1 run function dark_real_time_clock:clock/events/hour
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.minutes 0
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.hours 1
execute if score $dark_real_time_clock.clock dark_real_time_clock.hours < $dark_real_time_clock.config dark_real_time_clock.hours run return 1

# increment days
execute if score $dark_real_time_clock.events dark_real_time_clock.days matches 1 run function dark_real_time_clock:clock/events/day
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.hours 0
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.days 1
execute if score $dark_real_time_clock.clock dark_real_time_clock.days < $dark_real_time_clock.config dark_real_time_clock.days run return 1

# increment weeks
execute if score $dark_real_time_clock.events dark_real_time_clock.weeks matches 1 run function dark_real_time_clock:clock/events/week
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.days 0
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.weeks 1
