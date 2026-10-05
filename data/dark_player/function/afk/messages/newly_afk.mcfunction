function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Player",message:"{text:'You have been set to AFK. If you believe this is incorrect, please ',color:'white'},{text:'[click here]','click_event':{'action':'run_command','command':'/trigger dark_player.toggle_afk'},color:'green'},{text:'.',color:'white'}"}
tag @s add selected_player
execute as @a run function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Player",message:"{selector:'@p[tag=selected_player]'},{text:' has been set to AFK."}
tag @s remove selected_player