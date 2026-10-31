# RUN THIS AS THE PLAYER ENTRY
# Parameters:
# - role (int): The role of the citizen (2-5)

# Applying the town core id to the player
scoreboard players operation @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id = @s dark_civilization.town_core_id

# Assign role to player
$execute as @p[tag=dark_civilization.identified_player] run scoreboard players set @s dark_civilization.citizen_role $(role)