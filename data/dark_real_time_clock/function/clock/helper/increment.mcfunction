# restart stopwatch
function dark_real_time_clock:clock/stopwatch/restart_stopwatch

# increment hours
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.hours 1
function dark_real_time_clock:clock/events/hour
execute if score $dark_real_time_clock.clock dark_real_time_clock.hours < $dark_real_time_clock.config dark_real_time_clock.hours run return 1

# increment days
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.hours 0
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.days 1
function dark_real_time_clock:clock/events/day
execute if score $dark_real_time_clock.clock dark_real_time_clock.days < $dark_real_time_clock.config dark_real_time_clock.days run return 1

# increment weeks
scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.days 0
scoreboard players add $dark_real_time_clock.clock dark_real_time_clock.weeks 1
function dark_real_time_clock:clock/events/week