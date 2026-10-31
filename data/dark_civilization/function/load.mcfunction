# objectives
scoreboard objectives add dark_civilization.town_core_id dummy
scoreboard objectives add dark_civilization.core_level dummy
scoreboard objectives add dark_civilization.core_range dummy
scoreboard objectives add dark_civilization.citizen_role dummy
scoreboard objectives add dark_civilization.temp dummy
scoreboard objectives add dark_civilization.last_menu dummy

# triggers
scoreboard objectives add dark_civilization.toggle_opt_in trigger
scoreboard objectives add dark_civilization.menu trigger

scoreboard objectives add dark_civilization.create_town_core trigger

scoreboard objectives add dark_civilization.request_citizenship trigger
scoreboard objectives add dark_civilization.cancel_citizenship_request trigger
scoreboard objectives add dark_civilization.revoke_citizenship trigger

scoreboard objectives add dark_civilization.view_town_citizen_list trigger

scoreboard objectives add dark_civilization.accept_citizen_request trigger
scoreboard objectives add dark_civilization.ban_citizen trigger
scoreboard objectives add dark_civilization.remove_citizen trigger
scoreboard objectives add dark_civilization.apply_citizen_role trigger
scoreboard objectives add dark_civilization.apply_deputy_mayor_role trigger
scoreboard objectives add dark_civilization.assign_new_mayor trigger

# initial setup
execute unless data storage dark_civilization.config core_upgrades run function dark_civilization:config/setup
execute unless score $dark_civilization.config dark_civilization.town_core_id matches 0.. run scoreboard players set $dark_civilization.config dark_civilization.town_core_id 0
