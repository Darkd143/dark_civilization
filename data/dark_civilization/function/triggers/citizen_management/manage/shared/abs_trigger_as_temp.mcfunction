# Parameters:
# - trigger_name (string): The name of the trigger

scoreboard players set @s dark_civilization.temp 0
$execute if score @s dark_civilization.$(trigger_name) matches ..-1 run scoreboard players operation @s dark_civilization.temp -= @s dark_civilization.$(trigger_name)
$execute if score @s dark_civilization.$(trigger_name) matches 1.. run scoreboard players operation @s dark_civilization.temp = @s dark_civilization.$(trigger_name)