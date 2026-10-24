# Remove Money
execute store result storage temp money int 1 run data get storage dark_civilization.config core_upgrades.1.cost
function dark_economy:money/remove_money with storage temp
function dark_economy:money/messages/money_reduced with storage temp
data remove storage temp money

# Create Core
execute positioned ~ ~1 ~ run function dark_civilization:town_core/entities/create