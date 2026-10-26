# RUN THIS AS THE PLAYER ENTRY
# Parameters:
# - role (int): The role of the citizen (-1,1-5)

# Same Rule Applied
execute if score @s dark_civilization.citizen_role = @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role run return 1

function dark_civilization:town_core/manage/player_roles/set/messages

$execute as @p[tag=dark_civilization.identified_player] run scoreboard players set @s dark_civilization.citizen_role $(role)