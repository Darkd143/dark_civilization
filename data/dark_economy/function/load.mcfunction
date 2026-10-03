# objectives
scoreboard objectives add dark_economy.money dummy
scoreboard objectives add dark_economy.cost dummy

# triggers
scoreboard objectives add dark_economy.menu trigger
scoreboard objectives add dark_economy.display_money trigger

# Config
execute unless score $dark_economy.config dark_economy.cost matches 1.. store result score $dark_economy.config dark_economy.cost run function dark_real_time_clock:clock/helper/get_tick_rate