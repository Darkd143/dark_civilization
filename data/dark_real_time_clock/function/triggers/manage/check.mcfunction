execute as @a[scores={dark_real_time_clock.change_active=1..}] run function dark_real_time_clock:triggers/change_active/run
execute as @a[scores={dark_real_time_clock.change_display=1..}] run function dark_real_time_clock:triggers/change_display/run
execute as @a[scores={dark_real_time_clock.menu=1..}] run function dark_real_time_clock:triggers/menu/run
execute as @a[scores={dark_real_time_clock.set_day=-2..}] unless score @s dark_real_time_clock.set_day matches 0 run function dark_real_time_clock:triggers/set_day/run
execute as @a[scores={dark_real_time_clock.set_hour=-2..}] unless score @s dark_real_time_clock.set_hour matches 0 run function dark_real_time_clock:triggers/set_hour/run
execute as @a[scores={dark_real_time_clock.set_week=-2..}] unless score @s dark_real_time_clock.set_week matches 0 run function dark_real_time_clock:triggers/set_week/run
execute as @a[scores={dark_real_time_clock.set_session_afk_limit=-1..}] unless score @s dark_real_time_clock.set_session_afk_limit matches 0 run function dark_real_time_clock:triggers/set_session_afk_limit/run