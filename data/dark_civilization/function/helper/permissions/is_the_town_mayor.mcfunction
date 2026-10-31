execute if entity @s[type=player] run tag @s add dark_civilization.identified_player
function dark_civilization:helper/permissions/helper/set_player_role
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role matches 5 run return 1
return 0