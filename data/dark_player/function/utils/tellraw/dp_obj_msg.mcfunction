# Parameters:
# - dp_name (string): The name of the dp sending the message
# - message (object): The object message

$tellraw @s [{"text":"[$(dp_name)] ","color":"gray"},$(message)]