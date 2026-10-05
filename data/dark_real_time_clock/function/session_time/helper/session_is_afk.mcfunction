function dark_real_time_clock:session_time/helper/set_real_hours

# Check if hour count exceeds or equals setting
execute if score @s dark_real_time_clock.temp >= $dark_real_time_clock.session dark_real_time_clock.hours run return run function dark_real_time_clock:session_time/helper/reset_real_hours
return 0