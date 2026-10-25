execute as @a[scores={dark_civilization.toggle_opt_in=1..}] run function dark_civilization:triggers/toggle_opt_in/main
execute as @a[scores={dark_civilization.menu=1..}] run function dark_civilization:triggers/menu/main

execute as @a[scores={dark_civilization.create_town_core=1..}] run function dark_civilization:triggers/create_town_core/main

execute as @a[scores={dark_civilization.request_citizenship=1..}] run function dark_civilization:triggers/request_citizenship/main
execute as @a[scores={dark_civilization.cancel_citizenship_request=1..}] run function dark_civilization:triggers/cancel_citizenship_request/main
execute as @a[scores={dark_civilization.revoke_citizenship=1..}] run function dark_civilization:triggers/revoke_citizenship/main

execute as @a[scores={dark_civilization.view_town_citizen_list=1..}] run function dark_civilization:triggers/view_town_citizen_list/main

function dark_civilization:triggers/citizen_management/manage/check