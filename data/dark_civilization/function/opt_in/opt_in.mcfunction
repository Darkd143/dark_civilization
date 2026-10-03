tag @s add dark_civilization.opt_in
function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"You have opted in to the Dark Civilization features."}

# Opt In Scores
execute unless score @s dark_economy.money matches 0.. run scoreboard players set @s dark_economy.money 0