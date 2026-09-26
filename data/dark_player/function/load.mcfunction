scoreboard objectives add dark_player.player_id dummy
scoreboard objectives add dark_player.left_game minecraft.custom:minecraft.leave_game

# initial setup
execute unless score $dark_player.config dark_player.player_id matches 0.. run scoreboard players set $dark_player.config dark_player.player_id 0
