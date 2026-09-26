execute if entity @s[tag=dark_player.dp_op] run return fail
tag @s add dark_player.dp_op
function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Player","message":"You have been assigned as a server operator."}