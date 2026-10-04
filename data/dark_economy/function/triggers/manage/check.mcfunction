execute as @a[scores={dark_economy.menu=1..}] run function dark_economy:triggers/menu/run
execute as @a[scores={dark_economy.display_money=1..}] run function dark_economy:triggers/display_money/run
execute as @a[scores={dark_economy.claim_login_bonus=1..}] run function dark_economy:triggers/claim_login_bonus/run
execute as @a[scores={dark_economy.manage_login_bonus_menu=1..}] run function dark_economy:triggers/manage_login_bonus_menu/run
execute as @a[scores={dark_economy.set_initial_login_bonus=-1..}] unless score @s dark_economy.set_initial_login_bonus matches 0 run function dark_economy:triggers/set_initial_login_bonus/run
execute as @a[scores={dark_economy.set_weekly_login_bonus=-1..}] unless score @s dark_economy.set_weekly_login_bonus matches 0 run function dark_economy:triggers/set_weekly_login_bonus/run
execute as @a[scores={dark_economy.set_daily_login_bonus=-1..}] unless score @s dark_economy.set_daily_login_bonus matches 0 run function dark_economy:triggers/set_daily_login_bonus/run