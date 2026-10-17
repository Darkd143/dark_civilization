# If Player is Citizen
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id = @s dark_civilization.town_core_id run return run function dark_civilization:town_core/interact/citizen/main

# If Player is a Citizen of different Town
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id matches 1.. run return run function dark_civilization:town_core/interact/different_town_citizen/main

# If Player is not a Citizen of a Town
function dark_civilization:town_core/interact/non_citizen/main