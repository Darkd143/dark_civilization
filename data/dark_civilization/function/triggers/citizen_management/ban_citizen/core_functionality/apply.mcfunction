# Parameters:
# player_name (string): The name of the player

function dark_civilization:town_core/entities/player_entries/assign {role:1}
$execute as @p[tag=dark_civilization.identified_player] run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have banned $(player_name) from town."}