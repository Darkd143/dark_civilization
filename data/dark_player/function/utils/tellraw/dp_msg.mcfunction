# Parameters:
# - dp_name (string): The name of the dp sending the message
# - message (string): The message

$tellraw @s [{"text":"[$(dp_name)] ","color":"gray"},{"text":"$(message)","color":"white"}]