execute if entity @s[tag=!dark_player.dp_op] run return fail
tag @s remove dark_player.dp_op
function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Player","message":"You have been removed as a server operator."}