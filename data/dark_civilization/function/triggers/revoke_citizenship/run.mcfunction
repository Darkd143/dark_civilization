# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"revoke_citizenship"}

# Not a citizen of a town
execute unless function dark_civilization:helper/is_a_town_citizen run return run function dark_civilization:triggers/revoke_citizenship/not_a_town_citizen

# Is town mayor
execute if function dark_civilization:helper/is_mayor_of_a_town run return run function dark_civilization:triggers/revoke_citizenship/not_a_town_citizen

# Display dialog
execute unless score @s dark_civilization.revoke_citizenship matches 2 at @s run function dark_civilization:triggers/revoke_citizenship/display/main

# Revoke citizenship
execute if score @s dark_civilization.revoke_citizenship matches 2 at @s run function dark_civilization:town_core/manage/revoke_citizenship/main

# Reset score
function dark_civilization:triggers/revoke_citizenship/enable