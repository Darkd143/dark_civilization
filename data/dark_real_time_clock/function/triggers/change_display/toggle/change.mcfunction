scoreboard players add $dark_real_time_clock.config dark_real_time_clock.display 1

execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 1 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Real Time Clock",message:"Hour Stopwatch display has been changed to display 1."}
execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 2 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Real Time Clock",message:"Hour Stopwatch display has been changed to display 2."}
execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 3 run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Real Time Clock",message:"Hour Stopwatch display has been changed to display 3."}