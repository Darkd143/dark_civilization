tag @s add dark_civilization.opt_in
function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have opted in to the Dark Civilization features."}
function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Civilization",message:"{text:'To review all available features, run ',color:'white'},{'text':'/dark_player.help','color':'green','click_event':{'action':'run_command','command':'/trigger dark_player.help'}},{text:'.',color:'}"}

# Set Initial Login Bonus
execute unless score @s dark_real_time_clock.days matches 0.. run function dark_economy:money/login_bonus/set {type_string:"initial",type:1}
execute if score @s dark_real_time_clock.days matches 0.. run function dark_economy:money/login_bonus/check

# Opt In Scores
execute unless score @s dark_economy.money matches 0.. run scoreboard players set @s dark_economy.money 0
execute unless score @s dark_real_time_clock.days matches 0.. run function dark_real_time_clock:clock/helper/set_player_time