# Set up Storage
execute unless data storage temp storage run data modify storage temp storage set value "temp"
execute unless data storage temp identifier run data modify storage temp identifier set value "username"

# Save Storage
tag @s add dark_player.identifier
execute at @s run function dark_player:utils/username/helper/text_display with storage temp
tag @s remove dark_player.identifier

# Remove Storage
data remove storage temp storage
data remove storage temp identifier