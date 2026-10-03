# If new week, weekly bonus
execute unless score @s dark_real_time_clock.weeks = $dark_real_time_clock.clock dark_real_time_clock.weeks run return run function dark_economy:money/login_bonus/set {type_string:"weekly",type:2}

# If new day, daily bonus
execute unless score @s dark_real_time_clock.days = $dark_real_time_clock.clock dark_real_time_clock.days run return run function dark_economy:money/login_bonus/set {type_string:"daily",type:3}

# not new day and current bonuses, announce bonuses again
execute if score @s dark_economy.login_bonus matches 1.. run function dark_economy:money/login_bonus/message/unclaimed