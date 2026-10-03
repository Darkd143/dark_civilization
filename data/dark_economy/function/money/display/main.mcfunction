# Reduce display time
execute if score @s dark_economy.display_time matches 1.. run scoreboard players remove @s dark_economy.display_time 1

# Reset Score if players display time hit 0
execute if score @s dark_economy.display_time matches 0 run scoreboard players reset @s dark_economy.display_time

# Display
function dark_economy:money/display/actionbar