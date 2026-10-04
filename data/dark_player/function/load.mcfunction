# objectives
scoreboard objectives add dark_player.player_id dummy
scoreboard objectives add dark_player.left_game minecraft.custom:minecraft.leave_game

# objectives
scoreboard objectives add dark_player.last_x dummy
scoreboard objectives add dark_player.last_y dummy
scoreboard objectives add dark_player.last_z dummy
scoreboard objectives add dark_player.new_x dummy
scoreboard objectives add dark_player.new_y dummy
scoreboard objectives add dark_player.new_z dummy

# triggers
scoreboard objectives add dark_player.help trigger
scoreboard objectives add dark_player.player_menu trigger
scoreboard objectives add dark_player.op_menu trigger
scoreboard objectives add dark_player.afk_return trigger

# initial setup
execute unless score $dark_player.config dark_player.player_id matches 0.. run scoreboard players set $dark_player.config dark_player.player_id 0
