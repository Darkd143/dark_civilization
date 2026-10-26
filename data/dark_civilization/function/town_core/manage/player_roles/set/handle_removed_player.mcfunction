# RUN THIS AS THE PLAYER
# Parameters:
# - town_name (string): The name of the town

execute store result storage temp player_id int 1 run scoreboard players get @s dark_player.player_id

$execute if score @s dark_civilization.citizen_role matches -1 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have canceled your application for citizenship to $(town_name)."}

$execute if score @s dark_civilization.citizen_role matches 2 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"Your application for citizenship in $(town_name) was rejected."}

$execute if score @s dark_civilization.citizen_role matches 3..4 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"Your citizenship in $(town_name) has been revoked. If you believe this was a mistake, contact the mayor of $(town_name)."}

function dark_civilization:town_core/manage/player_roles/reset/all with storage temp