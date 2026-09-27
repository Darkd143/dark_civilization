# Triggers
function dark_real_time_clock:triggers/manage/check

# Check Stopwatch
execute if function dark_real_time_clock:clock/helper/clock_is_active run function dark_real_time_clock:clock/stopwatch/check

# Display Stopwatch
execute if function dark_real_time_clock:clock/helper/clock_display_is_active run function dark_real_time_clock:clock/display/main