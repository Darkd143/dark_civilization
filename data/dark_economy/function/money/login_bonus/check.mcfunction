# If new week, weekly bonus
execute if function dark_real_time_clock:clock/helper/new_week_for_player run return run function dark_economy:money/login_bonus/set {type_string:"weekly",type:2}

# If new day, daily bonus
execute if function dark_real_time_clock:clock/helper/new_day_for_player run return run function dark_economy:money/login_bonus/set {type_string:"daily",type:3}

# not new day and current bonuses, announce bonuses again
execute if function dark_economy:money/login_bonus/has_login_bonus run function dark_economy:money/login_bonus/message/unclaimed