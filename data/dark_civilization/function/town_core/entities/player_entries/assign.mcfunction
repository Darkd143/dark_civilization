# Parameters:
# - role (int): The role of the citizen (-1,1-5)

$scoreboard players set @s dark_civilization.citizen_role $(role)
# $execute as @p[tag=dark_civilization.identified_player] run scoreboard players set @s dark_civilization.citizen_role $(role)
# TODO: Announce player promotion or demotion based on role and modify their scores if they are online