function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Player",message:"You are no longer AFK."}
tag @s add selected_player
execute as @a run function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Player",message:"{selector:'@p[tag=selected_player]'},{text:' is no longer AFK."}
tag @s remove selected_player