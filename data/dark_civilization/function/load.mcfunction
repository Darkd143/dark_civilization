# objectives
scoreboard objectives add dark_civilization.town_core_id dummy
scoreboard objectives add dark_civilization.core_level dummy
scoreboard objectives add dark_civilization.core_range dummy
scoreboard objectives add dark_civilization.citizen_role dummy
scoreboard objectives add dark_civilization.temp dummy

# triggers
scoreboard objectives add dark_civilization.toggle_opt_in trigger
scoreboard objectives add dark_civilization.menu trigger
scoreboard objectives add dark_civilization.create_town_core trigger

# initial setup
execute unless data storage dark_civilization.config core_upgrades run function dark_civilization:config/setup
execute unless score $dark_civilization.config dark_civilization.town_core_id matches 0.. run scoreboard players set $dark_civilization.config dark_civilization.town_core_id 0
