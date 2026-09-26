# If no stopwatch, start one
execute unless stopwatch dark_hour_stopwatch 1 run function dark_real_time_clock:clock/stopwatch/create_stopwatch

# If stopwatch is hour or longer, run increment and reset the stopwatch
execute if stopwatch dark_hour_stopwatch 3600.. run function dark_real_time_clock:clock/helper/increment