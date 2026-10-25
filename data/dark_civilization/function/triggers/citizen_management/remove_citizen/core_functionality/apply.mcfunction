# Parameters:
# player_name (string): The name of the player

function dark_civilization:town_core/entities/player_entries/assign {role:-1}
$execute if score @s dark_civilization.citizen_role matches 1 as @p[tag=dark_civilization.identified_player] run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have unbanned $(player_name) from town."}
$execute if score @s dark_civilization.citizen_role matches 2 as @p[tag=dark_civilization.identified_player] run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have rejected the citizen request from $(player_name)."}
$execute if score @s dark_civilization.citizen_role matches 3..4 as @p[tag=dark_civilization.identified_player] run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have remove $(player_name) from town."}