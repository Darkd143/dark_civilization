# update seconds and minutes
function dark_real_time_clock:clock/stopwatch/get_stopwatch_time

# set up storage
# weeks:"",days:"",hours:"",minutes:"",minutes_prepend:"",seconds:"",seconds_prepend:""
data merge storage dark_clock {display:{}}

execute store result storage dark_clock weeks int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.weeks
execute store result storage dark_clock days int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.days
execute store result storage dark_clock hours int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.hours
execute store result storage dark_clock minutes int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.minutes
execute store result storage dark_clock seconds int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.seconds

execute if score $dark_real_time_clock.clock dark_real_time_clock.minutes matches 0..9 run data modify storage dark_clock minutes_prepend set value "0"
execute unless score $dark_real_time_clock.clock dark_real_time_clock.minutes matches 0..9 run data modify storage dark_clock minutes_prepend set value ""

execute if score $dark_real_time_clock.clock dark_real_time_clock.seconds matches 0..9 run data modify storage dark_clock seconds_prepend set value "0"
execute unless score $dark_real_time_clock.clock dark_real_time_clock.seconds matches 0..9 run data modify storage dark_clock seconds_prepend set value ""

# display
function dark_real_time_clock:clock/display/display with storage dark_clock

# remove storage
data remove storage dark_clock weeks
data remove storage dark_clock days
data remove storage dark_clock hours
data remove storage dark_clock minutes
data remove storage dark_clock seconds
data remove storage dark_clock minutes_prepend
data remove storage dark_clock seconds_prepend