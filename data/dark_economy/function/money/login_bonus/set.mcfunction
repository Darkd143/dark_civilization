# Parameters:
# - type_string (string): "initial", "daily", or "weekly"
# - type (int): 1-3

$execute store result score @s dark_economy.login_bonus run data get storage dark_economy.config login_bonus.$(type_string)
$scoreboard players set @s dark_economy.login_bonus_type $(type)
function dark_economy:money/login_bonus/message/new