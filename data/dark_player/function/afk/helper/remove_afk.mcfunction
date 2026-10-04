tag @s remove dark_player.afk
execute if score @s dark_real_time_clock.session_time matches 10.. run function dark_player:afk/messages/unset_afk