# objectives
scoreboard objectives add dark_economy.money dummy
scoreboard objectives add dark_economy.cost dummy
scoreboard objectives add dark_economy.login_bonus dummy
scoreboard objectives add dark_economy.login_bonus_type dummy

# triggers
scoreboard objectives add dark_economy.menu trigger
scoreboard objectives add dark_economy.display_money trigger
scoreboard objectives add dark_economy.claim_login_bonus trigger
scoreboard objectives add dark_economy.manage_login_bonus_menu trigger
scoreboard objectives add dark_economy.set_initial_login_bonus trigger
scoreboard objectives add dark_economy.set_weekly_login_bonus trigger
scoreboard objectives add dark_economy.set_daily_login_bonus trigger

# config
execute unless data storage dark_economy.config login_bonus run data merge storage dark_economy.config {login_bonus:{initial:300,weekly:200,daily:50}}