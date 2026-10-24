tag @s add dark_civilization.identified_player
execute as @e[type=minecraft:interaction] at @s as @p[tag=dark_civilization.identified_player] if function dark_civilization:town_core/entities/player_entries/has_for_caller/types/requestor run function dark_civilization:town_core/manage/cancel_citizenship_request/remove_request
tag @s remove dark_civilization.identified_player