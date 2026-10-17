# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"create_town_core"}

# Cannot create a town core if a citizen of a town
execute unless function dark_civilization:helper/is_a_town_citizen run return run function dark_civilization:triggers/create_town_core/already_citizen_error

# Doing things
execute if score @s dark_civilization.create_town_core matches 1 at @s align xyz positioned ~0.5 ~ ~0.5 run function dark_civilization:triggers/create_town_core/display/create_prompt/main

# Reset Score
function dark_civilization:triggers/create_town_core/enable