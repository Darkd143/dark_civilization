# Parameters:
# player_name (string): The name of the player

function dark_civilization:town_core/entities/player_entries/assign {role:5}
$execute as @p[tag=dark_civilization.identified_player] run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have promoted $(player_name) to the mayor role."}
execute as @e[distance=..3,tag=dark_civilization.town_core_player_entry,type=minecraft:armor_stand] if score @s dark_player.player_id = @p[tag=dark_civilization.identified_player] dark_player.player_id run function dark_civilization:town_core/entities/player_entries/assign {role:4}