# Parameters:
# - player_id (int): The player id of the player the entity represents
# - citizen_role (int): The role of the citizen (3 or 5)

scoreboard players set @s dark_real_time_clock.days 0
$scoreboard players set @s dark_player.player_id $(player_id)

# Assign the role score
$function dark_civilization:town_core/entities/player_entries/assign {citizen_role:$(citizen_role)}

# Remove Tag
execute as @s[tag=dark_civilization.new_player_entry] run tag @s remove dark_civilization.new_player_entry