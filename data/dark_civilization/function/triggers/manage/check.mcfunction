execute as @a[scores={dark_civilization.toggle_opt_in=1..}] run function dark_civilization:triggers/toggle_opt_in/run
execute as @a[scores={dark_civilization.menu=1..}] run function dark_civilization:triggers/menu/run

execute as @a[scores={dark_civilization.create_town_core=1..}] run function dark_civilization:triggers/create_town_core/run

execute as @a[scores={dark_civilization.request_citizenship=1..}] run function dark_civilization:triggers/request_citizenship/run
execute as @a[scores={dark_civilization.cancel_citizenship_request=1..}] run function dark_civilization:triggers/cancel_citizenship_request/run
execute as @a[scores={dark_civilization.revoke_citizenship=1..}] run function dark_civilization:triggers/revoke_citizenship/run

execute as @a[scores={dark_civilization.view_town_citizen_list=1..}] run function dark_civilization:triggers/view_town_citizen_list/run

function dark_civilization:triggers/citizen_management/manage/check