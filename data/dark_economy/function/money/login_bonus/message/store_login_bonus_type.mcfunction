execute if score @s dark_economy.login_bonus_type matches 1 run data modify storage temp type_string set value "Initial"
execute if score @s dark_economy.login_bonus_type matches 2 run data modify storage temp type_string set value "Weekly"
execute if score @s dark_economy.login_bonus_type matches 3 run data modify storage temp type_string set value "Daily"