scoreboard players set @s dark_economy.display_seconds 0
scoreboard players set @s dark_economy.display_time -0
function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Economy",message:"{text:'Set your money display time to the default: ',color:'white'},{score:{name:'$dark_economy.config',objective:'dark_economy.display_seconds'},color:'white'},{text:' seconds.',color:'white'}"}