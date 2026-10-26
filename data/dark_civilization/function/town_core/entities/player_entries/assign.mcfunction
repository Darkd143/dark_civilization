# Parameters:
# - role (int): The role of the citizen (-1,1-5)

$function dark_civilization:town_core/manage/player_roles/set/main {role:$(role)}
$scoreboard players set @s dark_civilization.citizen_role $(role)