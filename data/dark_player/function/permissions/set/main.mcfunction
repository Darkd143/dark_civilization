# parameters:
# - permission_level (int): The level of permissions to apply (1-5)

$scoreboard players set @s dark_player.permission_level $(permission_level)

execute if score @s dark_player.permission_level matches ..0 run return run function dark_player:permissions/set/revoke
execute if score @s dark_player.permission_level matches 6.. run scoreboard players set @s dark_player.permission_level 5