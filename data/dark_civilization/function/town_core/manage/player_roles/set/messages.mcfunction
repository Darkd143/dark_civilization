# RUN AS PLAYER ENTRY
# Parameters:
# - town_name (string): The name of the town

# Player Revoked
execute if score @s dark_civilization.citizen_role matches -1 as @p[tag=dark_civilization.identified_player] run return run function dark_civilization:town_core/manage/player_roles/set/handle_removed_player with storage temp

# Invalid
execute if score @s dark_civilization.citizen_role matches ..0 run return 1

# Banned
$execute if score @s dark_civilization.citizen_role matches 1 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have been banned from $(town_name) was rejected. If you believe this was a mistake, contact the mayor of $(town_name)."}

# Put in a citizenship request
$execute if score @s dark_civilization.citizen_role matches 2 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"Your citizenship request has been sent to $(town_name)."}

# Granted Citizenship
$execute if score @s dark_civilization.citizen_role matches 3..5 if score @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role matches 1..2 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have been granted citizenship in $(town_name)."}

# Promoted to Mayor
$execute if score @s dark_civilization.citizen_role matches 5 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have been promoted to Mayor of $(town_name)."}

# Demoted to Deputy Mayor
$execute if score @s dark_civilization.citizen_role matches 4 if score @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role matches 5 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have been demoted to Deputy Mayor of $(town_name)."}

# Promoted to Deputy Mayor
$execute if score @s dark_civilization.citizen_role matches 4 unless score @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role matches 5 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have been promoted to Deputy Mayor of $(town_name)."}

# Demoted to Citizen
$execute if score @s dark_civilization.citizen_role matches 3 if score @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role matches 4 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have been demoted to simple citizen in $(town_name)."}