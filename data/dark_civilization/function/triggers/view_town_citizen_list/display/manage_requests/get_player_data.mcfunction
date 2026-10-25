data modify storage temp username set from entity @s CustomName
execute store result storage temp player_id int 1 run scoreboard players get @s dark_player.player_id

function dark_civilization:triggers/view_town_citizen_list/display/manage_requests/store_player_entry with storage temp

data remove storage temp username
data remove storage temp player_id