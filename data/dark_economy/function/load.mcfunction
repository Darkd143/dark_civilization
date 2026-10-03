# objectives
scoreboard objectives add dark_economy.money dummy
scoreboard objectives add dark_economy.cost dummy
scoreboard objectives add dark_economy.display_time dummy
scoreboard objectives add dark_economy.display_seconds dummy

# triggers
scoreboard objectives add dark_economy.display_money trigger
scoreboard objectives add dark_economy.set_display_seconds trigger
scoreboard objectives add dark_economy.set_default_display_seconds trigger

# Config
execute unless score $dark_economy.config dark_economy.cost matches 1.. store result score $dark_economy.config dark_economy.cost run function dark_real_time_clock:clock/helper/get_tick_rate
execute unless score $dark_economy.config dark_economy.display_seconds matches 1.. run scoreboard players set $dark_economy.config dark_economy.display_seconds 10
execute unless score $dark_economy.config dark_economy.display_time matches 1.. run function dark_economy:money/display/set_display_time {entity:"$dark_economy.config"}