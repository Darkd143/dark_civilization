execute unless score @s dark_player.player_id matches 1.. run return run tellraw @s [{"text":"[Dark Player] "},{"text":"Error! Can't save the username of a player with no player id!","color":"red"}]

# Set up Storage
execute unless data storage temp storage run data modify storage temp storage set value "dark_player"
execute store result storage temp identifier int 1 run scoreboard players get @s dark_player.player_id

# Save Storage
tag @s add dark_player.identifier
execute at @s run function dark_player:utils/username/helper/text_display with storage temp
tag @s remove dark_player.identifier

# Remove Storage
execute if data storage temp storage run data remove storage temp storage
execute if data storage temp identifier run data remove storage temp identifier