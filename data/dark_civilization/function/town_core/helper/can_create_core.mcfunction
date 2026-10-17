execute store result score @s dark_economy.cost run data get storage dark_civilization.config core_upgrades.1.cost
execute unless function dark_economy:money/has_money run return run scoreboard players reset @s dark_economy.cost
scoreboard players reset @s dark_economy.cost
execute unless function dark_civilization:town_core/town_name/conditions_met run return 0
execute if function dark_civilization:town_core/helper/town_core_too_close/main run return 0
return 1