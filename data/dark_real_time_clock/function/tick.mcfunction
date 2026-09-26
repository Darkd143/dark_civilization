execute if score $dark_real_time_clock.config dark_real_time_clock.increment matches 1 run function dark_real_time_clock:clock/increment/main
execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 1 if entity @a[scores={dark_real_time_clock.display=1}] run function dark_real_time_clock:clock/display/main
