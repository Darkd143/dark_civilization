# Parameters:
# - money (int): The amount of login bonus money
# - type_string (string): "Initial", "Weekly", or "Daily"

$data modify storage dialog_temp message set value 'Claim your $(type_string) Login Bonus of $$(money)?'