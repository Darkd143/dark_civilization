execute as @a[scores={dark_civilization.accept_citizen_request=1..}] run function dark_civilization:triggers/citizen_management/accept_citizen_request/main
execute as @a[scores={dark_civilization.accept_citizen_request=..-1}] run function dark_civilization:triggers/citizen_management/accept_citizen_request/main

execute as @a[scores={dark_civilization.ban_citizen=1..}] run function dark_civilization:triggers/citizen_management/ban_citizen/main
execute as @a[scores={dark_civilization.ban_citizen=..-1}] run function dark_civilization:triggers/citizen_management/ban_citizen/main

execute as @a[scores={dark_civilization.apply_citizen_role=1..}] run function dark_civilization:triggers/citizen_management/apply_citizen_role/main
execute as @a[scores={dark_civilization.apply_citizen_role=..-1}] run function dark_civilization:triggers/citizen_management/apply_citizen_role/main

execute as @a[scores={dark_civilization.apply_deputy_mayor_role=1..}] run function dark_civilization:triggers/citizen_management/apply_deputy_mayor_role/main
execute as @a[scores={dark_civilization.apply_deputy_mayor_role=..-1}] run function dark_civilization:triggers/citizen_management/apply_deputy_mayor_role/main

execute as @a[scores={dark_civilization.assign_new_mayor=1..}] run function dark_civilization:triggers/citizen_management/assign_new_mayor/main
execute as @a[scores={dark_civilization.assign_new_mayor=..-1}] run function dark_civilization:triggers/citizen_management/assign_new_mayor/main

execute as @a[scores={dark_civilization.remove_citizen=1..}] run function dark_civilization:triggers/citizen_management/remove_citizen/main
execute as @a[scores={dark_civilization.remove_citizen=..-1}] run function dark_civilization:triggers/citizen_management/remove_citizen/main