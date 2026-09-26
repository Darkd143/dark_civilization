# Parameters:
# - weeks (int): The week count
# - days (int): The day count
# - hours (int): The hour count
# - minutes (int): The minute count
# - minutes_prepend (string): The prepend for the minutes ("" or "0")
# - seconds (int): The second count
# - seconds_prepend (string): The prepend for the seconds ("" or "0")

# display types:
# 1 - [X, Y] hh:mm:ss
# 2 - Week: X, Day: Y
# 3 - hh:mm:ss

$execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 1 run title @a[tag=dark_player.dp_op] actionbar [{"text":"[$(weeks), $(days)] $(hours):$(minutes_prepend)$(minutes):$(seconds_prepend)$(seconds)"}]

$execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 2 run title @a[tag=dark_player.dp_op] actionbar [{"text":"Week: $(weeks), Day: $(days)"}]

$execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 3 run title @a[tag=dark_player.dp_op] actionbar [{"text":"$(hours):$(minutes_prepend)$(minutes):$(seconds_prepend)$(seconds)"}]