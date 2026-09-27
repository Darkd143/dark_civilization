# objectives
scoreboard objectives add dark_civilization.town_core_id dummy

# triggers
scoreboard objectives add dark_civilization.toggle_opt_in trigger

# initial setup
execute unless data storage dark_civilization.config core_upgrades run function dark_civilization:config/core_upgrades/setup
execute unless score $dark_civilization.config dark_civilization.town_core_id matches 0.. run scoreboard players set $dark_civilization.config dark_civilization.town_core_id 0
