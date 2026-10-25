# Setup storage
function dark_civilization:helper/store_town_name
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.town_core_id

# Setup Dialog Data
function dark_civilization:town_core/interact/citizen/macro with storage temp

# Cleanup storage
data remove storage temp town_name
data remove storage temp town_core_id