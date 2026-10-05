# objectives
scoreboard objectives add dark_real_time_clock.seconds dummy
scoreboard objectives add dark_real_time_clock.minutes dummy
scoreboard objectives add dark_real_time_clock.hours dummy
scoreboard objectives add dark_real_time_clock.days dummy
scoreboard objectives add dark_real_time_clock.weeks dummy

scoreboard objectives add dark_real_time_clock.temp dummy

scoreboard objectives add dark_real_time_clock.increment dummy
scoreboard objectives add dark_real_time_clock.display dummy

scoreboard objectives add dark_real_time_clock.session_time minecraft.custom:minecraft.play_time

# triggers
scoreboard objectives add dark_real_time_clock.menu trigger
scoreboard objectives add dark_real_time_clock.change_active trigger
scoreboard objectives add dark_real_time_clock.change_display trigger
scoreboard objectives add dark_real_time_clock.set_hour trigger
scoreboard objectives add dark_real_time_clock.set_day trigger
scoreboard objectives add dark_real_time_clock.set_week trigger

scoreboard objectives add dark_real_time_clock.set_session_afk_limit trigger

# initial setup
function dark_real_time_clock:clock/config/setup
function dark_real_time_clock:session_time/setup_config