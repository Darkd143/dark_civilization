# Tag interaction
tag @s add dark_civilization.identified_interaction

# if Player is Banned
execute if function dark_civilization:helper/is_banned run return run function dark_civilization:town_core/interact/banned

# If Player is Citizen
execute if function dark_civilization:helper/is_citizen run return run function dark_civilization:town_core/interact/citizen/main

# If Player is a Citizen of different Town
execute if function dark_civilization:helper/is_citizen_of_any_town run return run function dark_civilization:town_core/interact/different_town_citizen

# If Player has already requested Citizenship somewhere
execute if function dark_civilization:helper/has_requested_citizenship run return run function dark_civilization:town_core/interact/already_requested_citizenship_somewhere

# If Player is not a Citizen of a Town
function dark_civilization:town_core/interact/non_citizen/main