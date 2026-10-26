# Parameters:
# - player_id (int): The player id of the player the entity represents

tag @s add dark_civilization.identified_player_entry
execute unless score @s dark_civilization.citizen_role = @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role run return run function dark_civilization:town_core/manage/player_roles/refresh
tag @s remove dark_civilization.identified_player_entry

# TODO: Update player entry activity