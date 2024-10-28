# Returns 1 if the executor is in the active game session and is tagged with 
# needs_number`, 0 otherwise

execute if entity @s[tag=needs_number,predicate=mineshaft8:is_in_active_game] run return 1
return 0
