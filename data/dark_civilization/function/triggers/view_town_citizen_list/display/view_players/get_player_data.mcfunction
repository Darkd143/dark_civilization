data modify storage temp username set from entity @s CustomName
execute if score @s dark_civilization.citizen_role matches 5 run data merge storage temp {role_name:"Mayor",role_color:"dark_green"}
execute if score @s dark_civilization.citizen_role matches 4 run data merge storage temp {role_name:"Deputy Mayor",role_color:"green"}
execute if score @s dark_civilization.citizen_role matches 3 run data merge storage temp {role_name:"Citizen",role_color:"white"}

function dark_civilization:triggers/view_town_citizen_list/display/view_players/store_player_entry with storage temp

data remove storage temp username
data remove storage temp role_name
data remove storage temp role_color