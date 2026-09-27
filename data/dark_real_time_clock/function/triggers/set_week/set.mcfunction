# Parameters:
# value (int): The value to set

$scoreboard players set $dark_real_time_clock.clock dark_real_time_clock.weeks $(value)

$function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Real Time Clock",message:"Set week to $(value)."}