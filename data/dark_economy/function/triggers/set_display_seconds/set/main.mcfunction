scoreboard players operation @s dark_economy.display_seconds = @s dark_economy.set_display_seconds
scoreboard players set @s dark_economy.display_time 0
function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Economy",message:"{text:'Set your money display time to ',color:'white'},{score:{name:'@s',objective:'dark_economy.set_display_seconds'},color:'white'},{text:' seconds.',color:'white'}"}